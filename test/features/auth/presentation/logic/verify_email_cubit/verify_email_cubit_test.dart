import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/usecases/send_verification_email_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/presentation/logic/verify_email_cubit/verify_email_cubit.dart';

import 'verify_email_cubit_test.mocks.dart';

@GenerateMocks([SendVerificationEmailUsecase])
void main() {
  late MockSendVerificationEmailUsecase usecase;
  late VerifyEmailCubit cubit;

  setUp(
    () {
      usecase = MockSendVerificationEmailUsecase();
      cubit = VerifyEmailCubit(usecase);
    },
  );

  blocTest(
    'should emit the state to success state when call sendEmailVerification and no errors happen',
    build: () => cubit,
    setUp: () async => when(usecase(any))
        .thenAnswer((realInvocation) async => const Right(unit)),
    act: (_) => cubit.senEmailVerification(),
    expect: () => [
      const VerifyEmailState.loding(),
      const VerifyEmailState.success(),
    ],
    verify: (_) => usecase(NoParams()),
  );

  blocTest(
    'should emit the state to error state when call sendEmailVerification and any error happen',
    build: () => cubit,
    setUp: () async => when(usecase(any)).thenAnswer(
        (realInvocation) async => const Left(AuthFailures.serverError())),
    act: (_) => cubit.senEmailVerification(),
    expect: () => [
      const VerifyEmailState.loding(),
      const VerifyEmailState.error(AuthFailures.serverError()),
    ],
    verify: (_) => usecase(NoParams()),
  );
}
