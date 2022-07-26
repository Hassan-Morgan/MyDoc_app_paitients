import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/usecases/reset_password_usecase.dart';

import 'get_current_user_usecase_test.mocks.dart';


void main() {
  late MockAuthRepository repository;
  late ResetPasswordUsecase usecase;

  setUp(
    () {
      repository = MockAuthRepository();
      usecase = ResetPasswordUsecase(repository);
    },
  );

  const testEmail = 'test email';
  test(
    "should return unit when call the usecase and no errors happen",
    () async {
      when(repository.resetPassword(any))
          .thenAnswer((realInvocation) async => const Right(unit));
      final result = await usecase(testEmail);
      expect(result, const Right(unit));
      verify(repository.resetPassword(testEmail));
    },
  );

  test(
    "should return AuthFailure when call the usecase and no errors happen",
    () async {
      when(repository.resetPassword(any)).thenAnswer(
          (realInvocation) async => const Left(AuthFailures.canecledByUser()));
      final result = await usecase(testEmail);
      expect(result, const Left(AuthFailures.canecledByUser()));
      verify(repository.resetPassword(testEmail));
    },
  );
}
