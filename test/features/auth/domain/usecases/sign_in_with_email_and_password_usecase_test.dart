import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/usecases/email_and_password_params.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/usecases/sign_in_with_email_and_password_usecase.dart';

import 'get_current_user_usecase_test.mocks.dart';

void main() {
  late MockAuthRepository repository;
  late SignInWithEmailAndPasswordUsecase usecase;

  setUp(
    () {
      repository = MockAuthRepository();
      usecase = SignInWithEmailAndPasswordUsecase(repository);
    },
  );

  const testParams = EmailAndPasswordParams('test email', 'test password');
  const testFailure = AuthFailures.incorrectEmailOrPassword();

  test(
    'should return Unit(void) when call the function and no errors happen',
    () async {
      when(repository.signInWithEmailAndPassword(any, any)).thenAnswer(
        (realInvocation) async => const Right(unit),
      );
      final result = await usecase(testParams);
      expect(result, const Right(unit));
      verify(repository.signInWithEmailAndPassword(
              testParams.email, testParams.password))
          .called(1);
    },
  );

  test(
    'should return Failure when call the function and error happen',
    () async {
      when(repository.signInWithEmailAndPassword(any, any)).thenAnswer(
        (realInvocation) async => const Left(testFailure),
      );
      final result = await usecase(testParams);
      expect(result, const Left(testFailure));
      verify(repository.signInWithEmailAndPassword(
              testParams.email, testParams.password))
          .called(1);
    },
  );
}
