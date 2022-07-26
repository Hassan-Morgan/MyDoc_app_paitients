
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/errors/app_exceptions.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/core/services/network_info_service.dart';
import 'package:my_doc_app_for_patients/features/auth/data/data_source/local_data_source/current_user_local_data_source.dart';
import 'package:my_doc_app_for_patients/features/auth/data/data_source/remote_data_source/firebase_remote_data_source.dart';
import 'package:my_doc_app_for_patients/features/auth/data/models/user_model.dart';
import 'package:my_doc_app_for_patients/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/entities/user_entity.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/repositories/auth_repository.dart';

import 'auth_repository_impl_test.mocks.dart';

@GenerateMocks([
  FirebaseAuthRemoteDataSource,
  CurrentUserLocalDataSource,
  NetworkInfo,
])
void main() {
  late MockFirebaseAuthRemoteDataSource remoteDataSource;
  late MockCurrentUserLocalDataSource localDataSource;
  late MockNetworkInfo networkInfo;
  late AuthRepository repository;

  setUp(
    () {
      remoteDataSource = MockFirebaseAuthRemoteDataSource();
      localDataSource = MockCurrentUserLocalDataSource();
      networkInfo = MockNetworkInfo();
      repository =
          AuthRepositoryImpl(remoteDataSource, localDataSource, networkInfo);
    },
  );

  const testUserEntity = UserEntity('test userId');
  final testUserModel = UserModel(
    userId: 'test userId',
    email: null,
    phoneNumber: null,
    userName: null,
  );
  const testEmail = 'test email';
  const testPassword = 'test password';

  group(
    'getCurrentUser',
    () {
      group(
        'there is network connection',
        () {
          setUp(
            () {
              when(networkInfo.getCurrentConnectionState)
                  .thenAnswer((realInvocation) async => true);
            },
          );

          test(
            '''should return userEntity and call set local data  when call the fuction 
             and there is network connection and no errors happen''',
            () async {
              when(remoteDataSource.getCurrentUser())
                  .thenAnswer((realInvocation) async => Right(testUserModel));
              final result = await repository.getCurrentUser();
              expect(result, const Right(testUserEntity));
              verify(localDataSource.setCurrentUser(testUserModel)).called(1);
              verify(remoteDataSource.getCurrentUser()).called(1);
              verifyNever(localDataSource.getCurrentUser());
            },
          );
          test(
            '''should return CurrentUserFailure when call the fuction
             and there is network connection and any CurrentUserException happen''',
            () async {
              when(remoteDataSource.getCurrentUser()).thenAnswer(
                  (realInvocation) async =>
                      const Left(CurrentUserException.cashError()));
              when(localDataSource.setCurrentUser(any))
                  .thenAnswer((realInvocation) async => unit);
              final result = await repository.getCurrentUser();
              expect(result, const Left(CurrentUserFailures.cashError()));
              verify(remoteDataSource.getCurrentUser()).called(1);
              verifyNever(localDataSource.getCurrentUser());
            },
          );
        },
      );

      group(
        'no network connection',
        () {
          setUp(
            () {
              when(networkInfo.getCurrentConnectionState)
                  .thenAnswer((realInvocation) async => false);
            },
          );

          test(
            '''should return userEntity when call the fuction
             and there is no network connection and no local errors happen''',
            () async {
              when(localDataSource.getCurrentUser())
                  .thenAnswer((realInvocation) async => Right(testUserModel));
              final result = await repository.getCurrentUser();
              expect(result, const Right(testUserEntity));
              verify(localDataSource.getCurrentUser()).called(1);
              verifyNever(remoteDataSource.getCurrentUser());
            },
          );
          test(
            '''should return Failure when call the fuction
             and there is no network connection and Local error happen''',
            () async {
              when(localDataSource.getCurrentUser()).thenAnswer(
                  (realInvocation) async =>
                      const Left(CurrentUserException.cashError()));
              final result = await repository.getCurrentUser();
              expect(result, const Left(CurrentUserFailures.cashError()));
              verify(localDataSource.getCurrentUser()).called(1);
              verifyNever(remoteDataSource.getCurrentUser());
            },
          );
        },
      );
    },
  );

  group(
    'signInWithEmailAndPassword',
    () {
      group(
        'no internet connection',
        () {
          setUp(
            () {
              when(networkInfo.getCurrentConnectionState)
                  .thenAnswer((realInvocation) async => false);
            },
          );
          test(
            '''should return AuthFailure.noInternetConnection when call the function 
            and no internet connection''',
            () async {
              final result = await repository.signInWithEmailAndPassword(
                  testEmail, testPassword);
              expect(result, const Left(AuthFailures.networkFailure()));
              verifyNever(
                  remoteDataSource.signInWithEmailAndPassword(any, any));
            },
          );
        },
      );

      group(
        'there is internet connection',
        () {
          setUp(
            () {
              when(networkInfo.getCurrentConnectionState)
                  .thenAnswer((realInvocation) async => true);
            },
          );
          test(
            '''should return unit when call the function and no errors happen''',
            () async {
              when(remoteDataSource.signInWithEmailAndPassword(any, any))
                  .thenAnswer((realInvocation) async => const Right(unit));
              final result = await repository.signInWithEmailAndPassword(
                  testEmail, testPassword);
              expect(result, const Right(unit));
              verify(remoteDataSource.signInWithEmailAndPassword(
                      testEmail, testPassword))
                  .called(1);
            },
          );

          test(
            '''should return AuthFailure when call the function and errors happen''',
            () async {
              when(remoteDataSource.signInWithEmailAndPassword(any, any))
                  .thenAnswer((realInvocation) async =>
                      const Left(AuthExceptions.incorrectEmailOrPassword()));
              final result = await repository.signInWithEmailAndPassword(
                  testEmail, testPassword);
              expect(
                  result, const Left(AuthFailures.incorrectEmailOrPassword()));
              verify(remoteDataSource.signInWithEmailAndPassword(
                      testEmail, testPassword))
                  .called(1);
            },
          );
        },
      );
    },
  );

  group(
    'registerWithEmailAndPassword',
    () {
      group(
        'no internet connection',
        () {
          setUp(
            () {
              when(networkInfo.getCurrentConnectionState)
                  .thenAnswer((realInvocation) async => false);
            },
          );
          test(
            '''should return AuthFailure.noInternetConnection when call the function 
            and no internet connection''',
            () async {
              final result = await repository.registerWithEmailAndPassword(
                  testEmail, testPassword);
              expect(result, const Left(AuthFailures.networkFailure()));
              verifyNever(
                  remoteDataSource.registerWithEmailAndPassword(any, any));
            },
          );
        },
      );

      group(
        'there is internet connection',
        () {
          setUp(
            () {
              when(networkInfo.getCurrentConnectionState)
                  .thenAnswer((realInvocation) async => true);
            },
          );
          test(
            '''should return unit when call the function and no errors happen''',
            () async {
              when(remoteDataSource.registerWithEmailAndPassword(any, any))
                  .thenAnswer((realInvocation) async => const Right(unit));
              final result = await repository.registerWithEmailAndPassword(
                  testEmail, testPassword);
              expect(result, const Right(unit));
              verify(remoteDataSource.registerWithEmailAndPassword(
                      testEmail, testPassword))
                  .called(1);
            },
          );

          test(
            '''should return AuthFailure when call the function and errors happen''',
            () async {
              when(remoteDataSource.registerWithEmailAndPassword(any, any))
                  .thenAnswer((realInvocation) async =>
                      const Left(AuthExceptions.emailAlreadyRegistered()));
              final result = await repository.registerWithEmailAndPassword(
                  testEmail, testPassword);
              expect(result, const Left(AuthFailures.emailAlreadyRegistered()));
              verify(remoteDataSource.registerWithEmailAndPassword(
                      testEmail, testPassword))
                  .called(1);
            },
          );
        },
      );
    },
  );

  group(
    'registerWithGoogle',
    () {
      group(
        'no internet connection',
        () {
          setUp(
            () {
              when(networkInfo.getCurrentConnectionState)
                  .thenAnswer((realInvocation) async => false);
            },
          );
          test(
            '''should return AuthFailure.noInternetConnection when call the function 
            and no internet connection''',
            () async {
              final result = await repository.registerWithGoogle();
              expect(result, const Left(AuthFailures.networkFailure()));
              verifyNever(remoteDataSource.registerWithGoogle());
            },
          );
        },
      );

      group(
        'there is internet connection',
        () {
          setUp(
            () {
              when(networkInfo.getCurrentConnectionState)
                  .thenAnswer((realInvocation) async => true);
            },
          );
          test(
            '''should return unit when call the function and no errors happen''',
            () async {
              when(remoteDataSource.registerWithGoogle())
                  .thenAnswer((realInvocation) async => const Right(unit));
              final result = await repository.registerWithGoogle();
              expect(result, const Right(unit));
              verify(remoteDataSource.registerWithGoogle()).called(1);
            },
          );

          test(
            '''should return AuthFailure when call the function and errors happen''',
            () async {
              when(remoteDataSource.registerWithGoogle()).thenAnswer(
                  (realInvocation) async =>
                      const Left(AuthExceptions.canceledByUser()));
              final result = await repository.registerWithGoogle();
              expect(result, const Left(AuthFailures.canecledByUser()));
              verify(remoteDataSource.registerWithGoogle()).called(1);
            },
          );
        },
      );
    },
  );

  group(
    'registerWithFacebook',
    () {
      group(
        'no internet connection',
        () {
          setUp(
            () {
              when(networkInfo.getCurrentConnectionState)
                  .thenAnswer((realInvocation) async => false);
            },
          );
          test(
            '''should return AuthFailure.noInternetConnection when call the function 
            and no internet connection''',
            () async {
              final result = await repository.registerWithFacebook();
              expect(result, const Left(AuthFailures.networkFailure()));
              verifyNever(remoteDataSource.registerWithFacebook());
            },
          );
        },
      );

      group(
        'there is internet connection',
        () {
          setUp(
            () {
              when(networkInfo.getCurrentConnectionState)
                  .thenAnswer((realInvocation) async => true);
            },
          );
          test(
            '''should return unit when call the function and no errors happen''',
            () async {
              when(remoteDataSource.registerWithFacebook())
                  .thenAnswer((realInvocation) async => const Right(unit));
              final result = await repository.registerWithFacebook();
              expect(result, const Right(unit));
              verify(remoteDataSource.registerWithFacebook()).called(1);
            },
          );

          test(
            '''should return AuthFailure when call the function and errors happen''',
            () async {
              when(remoteDataSource.registerWithFacebook()).thenAnswer(
                  (realInvocation) async =>
                      const Left(AuthExceptions.canceledByUser()));
              final result = await repository.registerWithFacebook();
              expect(result, const Left(AuthFailures.canecledByUser()));
              verify(remoteDataSource.registerWithFacebook()).called(1);
            },
          );
        },
      );
    },
  );

  group(
    'resetPassword',
    () {
      group(
        'no internet connection',
        () {
          setUp(
            () {
              when(networkInfo.getCurrentConnectionState)
                  .thenAnswer((realInvocation) async => false);
            },
          );
          test(
            '''should return AuthFailure.noInternetConnection when call the function 
            and no internet connection''',
            () async {
              final result = await repository.resetPassword(testEmail);
              expect(result, const Left(AuthFailures.networkFailure()));
              verifyNever(remoteDataSource.resetPassword(any));
            },
          );
        },
      );

      group(
        'there is internet connection',
        () {
          setUp(
            () {
              when(networkInfo.getCurrentConnectionState)
                  .thenAnswer((realInvocation) async => true);
            },
          );
          test(
            '''should return unit when call the function and no errors happen''',
            () async {
              when(remoteDataSource.resetPassword(any))
                  .thenAnswer((realInvocation) async => const Right(unit));
              final result = await repository.resetPassword(testPassword);
              expect(result, const Right(unit));
              verify(remoteDataSource.resetPassword(testPassword)).called(1);
            },
          );

          test(
            '''should return AuthFailure when call the function and errors happen''',
            () async {
              when(remoteDataSource.resetPassword(any)).thenAnswer(
                  (realInvocation) async =>
                      const Left(AuthExceptions.serverException()));
              final result = await repository.resetPassword(testEmail);
              expect(result, const Left(AuthFailures.serverError()));
              verify(remoteDataSource.resetPassword(testEmail)).called(1);
            },
          );
        },
      );
    },
  );

  group(
    'send email verification',
    () {
      test(
        "should return unit when call the function and no errors happen",
        () async {
          when(networkInfo.getCurrentConnectionState)
              .thenAnswer((_) async => true);
          when(remoteDataSource.sendEmailVerification())
              .thenAnswer((realInvocation) async => const Right(unit));
          final result = await repository.sentEmailVerification();
          expect(result, const Right(unit));
          verify(remoteDataSource.sendEmailVerification()).called(1);
        },
      );

      test(
        "should return AuthFailure when call the function and no errors happen",
        () async {
          when(networkInfo.getCurrentConnectionState)
              .thenAnswer((_) async => true);
          when(remoteDataSource.sendEmailVerification()).thenAnswer(
              (realInvocation) async =>
                  const Left(AuthExceptions.serverException()));
          final result = await repository.sentEmailVerification();
          expect(result, const Left(AuthFailures.serverError()));
          verify(remoteDataSource.sendEmailVerification()).called(1);
        },
      );

       test(
        "should return AuthFailure.networkFailure when call the function and no errors happen",
        () async {
          when(networkInfo.getCurrentConnectionState)
              .thenAnswer((_) async => false);
          final result = await repository.sentEmailVerification();
          expect(result, const Left(AuthFailures.networkFailure()));
          verifyNever(remoteDataSource.sendEmailVerification());
        },
      );
    },
  );
}
