import 'package:dartz/dartz.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/entities/user_entity.dart';

import '../../../../core/errors/app_failures.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> getCurrentUser();

  Future<Either<AuthFailures, Unit>> signInWithEmailAndPassword(
      String email, String password);

  Future<Either<AuthFailures, Unit>> registerWithEmailAndPassword(
      String email, String password);

  Future<Either<AuthFailures, Unit>> registerWithGoogle();

  Future<Either<AuthFailures, Unit>> registerWithFacebook();
  Future<Either<AuthFailures, Unit>> resetPassword(String email);
}
