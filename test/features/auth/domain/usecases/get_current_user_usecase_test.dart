import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/entities/user_entity.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/repositories/auth_repository.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/usecases/get_current_user_usecase.dart';

import 'get_current_user_usecase_test.mocks.dart';

@GenerateMocks([AuthRepository])
void main() {
  late MockAuthRepository repository;
  late GetCurrentUserUsecase usecase;

  setUp(
    () {
      repository = MockAuthRepository();
      usecase = GetCurrentUserUsecase(repository);
    },
  );

  const testFailure = CurrentUserFailures.noCurrentUser();
  const testUserEntity = UserEntity('test id');

  test(
    'should return UserEntity when call the function and no errors happen',
    () async {
      when(repository.getCurrentUser()).thenAnswer(
        (realInvocation) async => const Right(testUserEntity),
      );
      final result = await usecase(NoParams());
      expect(result, const Right(testUserEntity));
      verify(repository.getCurrentUser()).called(1);
    },
  );

  test(
    'should return Failure when call the function and error happen',
    () async {
      when(repository.getCurrentUser()).thenAnswer(
        (realInvocation) async => const Left(testFailure),
      );
      final result = await usecase(NoParams());
      expect(result, const Left(testFailure));
      verify(repository.getCurrentUser()).called(1);
    },
  );
}
