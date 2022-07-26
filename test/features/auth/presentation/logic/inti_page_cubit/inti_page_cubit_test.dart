import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/entities/user_entity.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/presentation/logic/init_cubit/init_page_cubit.dart';

import 'inti_page_cubit_test.mocks.dart';

@GenerateMocks([GetCurrentUserUsecase])
void main() {
  late MockGetCurrentUserUsecase currentUserUsecase;
  late AuthInitPageCubit cubit;

  setUp(
    () {
      currentUserUsecase = MockGetCurrentUserUsecase();
      cubit = AuthInitPageCubit(currentUserUsecase);
    },
  );

  const testUserEntity = UserEntity('test uid');
  const testFailure = CurrentUserFailures.noCurrentUser();

  test(
    '''should set state to success when init the cubit 
    and no errors happen when call the getCurrentUser function''',
    () async {
      when(currentUserUsecase(any))
          .thenAnswer((realInvocation) async => const Right(testUserEntity));
      cubit.getCurrentUser();
      expect(cubit.state, AuthInitPageState.initState());
      await untilCalled(currentUserUsecase(any));
      expect(cubit.state, AuthInitPageState.successState(testUserEntity));
      verify(currentUserUsecase(NoParams()));
    },
  );

  test(
    '''should set state to error when init the cubit 
    and errors happen when call the getCurrentUser function''',
    () async {
      when(currentUserUsecase(any))
          .thenAnswer((realInvocation) async => const Left(testFailure));
      cubit.getCurrentUser();
      expect(cubit.state, AuthInitPageState.initState());
      await untilCalled(currentUserUsecase(any));
      expect(cubit.state, AuthInitPageState.errorState(testFailure));
      verify(currentUserUsecase(NoParams()));
    },
  );
}
