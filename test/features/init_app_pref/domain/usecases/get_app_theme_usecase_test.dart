import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/entities/app_theme_entity.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/usecases/get_app_theme_usecase.dart';

import 'get_app_language_usecase_test.mocks.dart';

void main() {
  late MockAppPrefRepository repository;
  late GetAppThemeUsecase usecase;

  setUp(
    () {
      repository = MockAppPrefRepository();
      usecase = GetAppThemeUsecase(repository);
    },
  );

  const testAppThemeEntity = AppThemeEntity(ThemeMode.dark);
  const testCashFailure = CashFailures.getDataFailure();

  test(
    'should return AppThemeEntity when call the usecase and no failures happen',
    () async {
      when(repository.getAppTheme()).thenAnswer(
          (realInvocation) async => const Right(testAppThemeEntity));
      final result = await usecase(NoParams());
      expect(result, const Right(testAppThemeEntity));
      verify(repository.getAppTheme()).called(1);
      verifyNever(repository.getAppLanguage());
    },
  );

  test(
    'should return CashFailure when call the usecase and failure happen',
    () async {
      when(repository.getAppTheme())
          .thenAnswer((realInvocation) async => const Left(testCashFailure));
      final result = await usecase(NoParams());
      expect(result, const Left(testCashFailure));
      verify(repository.getAppTheme()).called(1);
      verifyNever(repository.getAppLanguage());
    },
  );
}
