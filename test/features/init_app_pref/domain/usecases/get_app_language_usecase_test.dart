import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/entities/app_language_entity.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/repositories/app_pref_repository.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/usecases/get_app_language_usecase.dart';

import 'get_app_language_usecase_test.mocks.dart';

@GenerateMocks([AppPrefRepository])
void main() {
  late MockAppPrefRepository repository;
  late GetAppLanguageUsecase usecase;

  setUp(
    () {
      repository = MockAppPrefRepository();
      usecase = GetAppLanguageUsecase(repository);
    },
  );

  const testAppLanguageEntity = AppLanguageEntity('test');
  const testCashFailure = CashFailures.getDataFailure();

  test(
    'should return AppLanguageEntity when call the usecase and no failures happen',
    () async {
      when(repository.getAppLanguage()).thenAnswer(
          (realInvocation) async => const Right(testAppLanguageEntity));
      final result = await usecase(NoParams());
      expect(result, const Right(testAppLanguageEntity));
      verify(repository.getAppLanguage()).called(1);
      verifyNever(repository.getAppTheme());
    },
  );

  test(
    'should return CashFailure when call the usecase and failures happen',
    () async {
      when(repository.getAppLanguage())
          .thenAnswer((realInvocation) async => const Left(testCashFailure));
      final result = await usecase(NoParams());
      expect(result, const Left(testCashFailure));
      verify(repository.getAppLanguage()).called(1);
      verifyNever(repository.getAppTheme());
    },
  );
}
