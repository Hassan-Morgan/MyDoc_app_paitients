import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/usecases/send_verification_email_usecase.dart';

import 'get_current_user_usecase_test.mocks.dart';

void main() {
  late MockAuthRepository repository;
  late SendVerificationEmailUsecase usecase;

  setUp(
    () {
      repository = MockAuthRepository();
      usecase = SendVerificationEmailUsecase(repository);
    },
  );
  test(
    "should return unit when call the function and no errors happen",
    () async {
      when(repository.sentEmailVerification())
          .thenAnswer((realInvocation) async => const Right(unit));
      final result = await usecase(NoParams());
      expect(result, const Right(unit));
      verify(repository.sentEmailVerification()).called(1);
    },
  );

  test(
    "should return AuthFailure when call the function and any error happen",
    () async {
      when(repository.sentEmailVerification()).thenAnswer(
          (realInvocation) async => const Left(AuthFailures.serverError()));
      final result = await usecase(NoParams());
      expect(result, const Left(AuthFailures.serverError()));
      verify(repository.sentEmailVerification()).called(1);
    },
  );
}
