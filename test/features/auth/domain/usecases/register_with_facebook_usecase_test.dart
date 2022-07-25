import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/usecases/register_with_facebook_usecase.dart';

import 'get_current_user_usecase_test.mocks.dart';

void main() {
  late MockAuthRepository repository;
  late RegisterWithFacebookUsecase usecase;

  setUp(
    () {
      repository = MockAuthRepository();
      usecase = RegisterWithFacebookUsecase(repository);
    },
  );

  const testFailure = AuthFailures.incorrectEmailOrPassword();

  test(
    'should return Unit(void) when call the function and no errors happen',
    () async {
      when(repository.registerWithFacebook()).thenAnswer(
        (realInvocation) async => const Right(unit),
      );
      final result = await usecase(NoParams());
      expect(result, const Right(unit));
      verify(repository.registerWithFacebook()).called(1);
    },
  );

  test(
    'should return Failure when call the function and error happen',
    () async {
      when(repository.registerWithFacebook()).thenAnswer(
        (realInvocation) async => const Left(testFailure),
      );
      final result = await usecase(NoParams());
      expect(result, const Left(testFailure));
      verify(repository.registerWithFacebook()).called(1);
    },
  );
}
