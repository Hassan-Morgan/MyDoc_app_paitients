import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/presentation/logic/reset_password_cubit/reset_password_cubit.dart';

import 'reset_password_cubit_test.mocks.dart';

@GenerateMocks([ResetPasswordUsecase])
void main() {
  late MockResetPasswordUsecase usecase;
  late ResetPasswordCubit cubit;

  setUp(
    () {
      usecase = MockResetPasswordUsecase();
      cubit = ResetPasswordCubit(usecase);
    },
  );

  const testInvalidEmail = 'test email';
  const testValidEmail = 'test@test.com';

  group(
    'email field changed',
    () {
      test(
        "when enter email it should set the value to email and when it is valid it should set isEmailValid to true",
        () {
          cubit.emailFieldChanged(testValidEmail);
          expect(cubit.email, testValidEmail);
          expect(cubit.isEmailValid, true);
        },
      );

      test(
        "when enter email it should set the value to email and when it is not valid it should set isEmailValid to false",
        () {
          cubit.emailFieldChanged(testInvalidEmail);
          expect(cubit.email, testInvalidEmail);
          expect(cubit.isEmailValid, false);
        },
      );
    },
  );

  group(
    'send reset email',
    () {
      test(
        "should emit the state to success state when call sendEmailVerification and no errors happen",
        () async {
          when(usecase(any))
              .thenAnswer((realInvocation) async => const Right(unit));
          cubit.emailFieldChanged(testValidEmail);
          expect(cubit.state, const ResetPasswordState.initial());
          cubit.sendResetEmail();
          expect(cubit.state, const ResetPasswordState.loading());
          await untilCalled(usecase(any));
          expect(cubit.state, const ResetPasswordState.success());
          verify(usecase(testValidEmail)).called(1);
        },
      );

      test(
        "should emit the state to error state when call sendEmailVerification and any error happen",
        () async {
          when(usecase(any)).thenAnswer((realInvocation) async =>
              const Left(AuthFailures.networkFailure()));
          cubit.emailFieldChanged(testValidEmail);
          expect(cubit.state, const ResetPasswordState.initial());
          cubit.sendResetEmail();
          expect(cubit.state, const ResetPasswordState.loading());
          await untilCalled(usecase(any));
          expect(cubit.state,
              const ResetPasswordState.error(AuthFailures.networkFailure()));
          verify(usecase(testValidEmail)).called(1);
        },
      );
    },
  );
}
