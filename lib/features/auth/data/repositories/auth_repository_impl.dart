import 'package:injectable/injectable.dart';
import 'package:my_doc_app_for_patients/core/errors/app_exceptions.dart';
import 'package:my_doc_app_for_patients/core/services/network_info_service.dart';
import 'package:my_doc_app_for_patients/features/auth/data/data_source/local_data_source/current_user_local_data_source.dart';
import 'package:my_doc_app_for_patients/features/auth/data/data_source/remote_data_source/firebase_remote_data_source.dart';
import 'package:my_doc_app_for_patients/features/auth/data/mappers/user_entity_mappar.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/entities/user_entity.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final FirebaseAuthRemoteDataSource _remoteDataSource;
  final CurrentUserLocalDataSource _localDataSource;
  final NetworkInfo _networkInfo;

  AuthRepositoryImpl(
      this._remoteDataSource, this._localDataSource, this._networkInfo);

  @override
  Future<Either<Failure, UserEntity>> getCurrentUser() async {
    final isConnectedToInternet = await _networkInfo.getCurrentConnectionState;
    if (isConnectedToInternet) {
      final remoteResult = await _remoteDataSource.getCurrentUser();
      return remoteResult.fold(
        (l) => Left(_toAuthFailure(l)),
        (r) async {
          await _localDataSource.setCurrentUser(r);
          return Right(r.toEntity());
        },
      );
    } else {
      final localResult = await _localDataSource.getCurrentUser();
      return localResult.fold(
        (l) => l.when(
          noDataException: () => const Left(CashFailures.noDataStored()),
          unImplementedException: () =>
              const Left(CashFailures.getDataFailure()),
        ),
        (r) => Right(r.toEntity()),
      );
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> registerWithEmailAndPassword(
      String email, String password) async {
    if (await _networkInfo.getCurrentConnectionState) {
      return _authFunction(
        authResult:
            _remoteDataSource.registerWithEmailAndPassword(email, password),
      );
    } else {
      return const Left(AuthFailures.networkFailure());
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> registerWithFacebook() async {
    if (await _networkInfo.getCurrentConnectionState) {
      return _authFunction(
        authResult: _remoteDataSource.registerWithFacebook(),
      );
    } else {
      return const Left(AuthFailures.networkFailure());
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> registerWithGoogle() async {
    if (await _networkInfo.getCurrentConnectionState) {
      return _authFunction(
        authResult: _remoteDataSource.registerWithGoogle(),
      );
    } else {
      return const Left(AuthFailures.networkFailure());
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> signInWithEmailAndPassword(
      String email, String password) async {
    if (await _networkInfo.getCurrentConnectionState) {
      return _authFunction(
        authResult:
            _remoteDataSource.signInWithEmailAndPassword(email, password),
      );
    } else {
      return const Left(AuthFailures.networkFailure());
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> resetPassword(String email) async {
    if (await _networkInfo.getCurrentConnectionState) {
      return _authFunction(authResult: _remoteDataSource.resetPassword(email));
    }
    return const Left(AuthFailures.networkFailure());
  }

  Future<Either<AuthFailures, Unit>> _authFunction({
    required Future<Either<AuthExceptions, Unit>> authResult,
  }) async {
    final result = await authResult;
    return result.fold(
      (l) => Left(_toAuthFailure(l)),
      (r) => const Right(unit),
    );
  }

  AuthFailures _toAuthFailure(AuthExceptions exceptions) {
    return exceptions.when(
      wrongEmail: () => const AuthFailures.wrongEmail(),
      noCurrentUser: () => const AuthFailures.noCurrentUser(),
      serverException: () => const AuthFailures.serverError(),
      incorrectEmailOrPassword: () =>
          const AuthFailures.incorrectEmailOrPassword(),
      emailAlreadyRegistered: () => const AuthFailures.emailAlreadyRegistered(),
      canceledByUser: () => const AuthFailures.canecledByUser(),
    );
  }
}
