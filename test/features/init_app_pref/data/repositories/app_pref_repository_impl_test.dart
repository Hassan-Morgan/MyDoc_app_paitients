import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/errors/app_exceptions.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/data/data_sources/local_data_source.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/data/models/app_language_model.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/data/models/app_theme_model.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/data/repositories/app_pref_repository_impl.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/entities/app_language_entity.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/entities/app_theme_entity.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/repositories/app_pref_repository.dart';

import 'app_pref_repository_impl_test.mocks.dart';

@GenerateMocks([AppPrefLocalDataSource])
void main() {
  late MockAppPrefLocalDataSource localDataSource;
  late AppPrefRepository repository;

  setUp(
    () {
      localDataSource = MockAppPrefLocalDataSource();
      repository = AppPrefRepositoryImpl(localDataSource);
    },
  );

  const testAppThemeEntity = AppThemeEntity(ThemeMode.dark);
  const testAppThemeModel = AppThemeModel(ThemeMode.dark);
  const testAppLanguageEntity = AppLanguageEntity('test');
  const testAppLanguageModel = AppLanguageModel('test');
  const testNoDataException = CashExceptions.noDataException();
  const testNoDataFailure = CashFailures.noDataStored();
  const testUnImplementedException = CashExceptions.unImplementedException();
  const testUnImplementedFailure = CashFailures.getDataFailure();

  group(
    'getAppThem function',
    () {
      test(
        'should return Right(AppThemeEntity) when call the function and no errors happen',
        () async {
          when(localDataSource.getAppTheme()).thenAnswer(
              (realInvocation) async => const Right(testAppThemeModel));
          final result = await repository.getAppTheme();
          expect(result, const Right(testAppThemeEntity));
          verify(localDataSource.getAppTheme()).called(1);
          verifyNever(localDataSource.getAppLanguage());
        },
      );

      test(
        'should return Left(NoDataFialure) when call the function and no data stored error happen',
        () async {
          when(localDataSource.getAppTheme()).thenAnswer(
              (realInvocation) async => const Left(testNoDataException));
          final result = await repository.getAppTheme();
          expect(result, const Left(testNoDataFailure));
          verify(localDataSource.getAppTheme()).called(1);
          verifyNever(localDataSource.getAppLanguage());
        },
      );

       test(
        'should return Left(UnimplementedFailure) when call the function and unexpected error happen',
        () async {
          when(localDataSource.getAppTheme()).thenAnswer(
              (realInvocation) async => const Left(testUnImplementedException));
          final result = await repository.getAppTheme();
          expect(result, const Left(testUnImplementedFailure));
          verify(localDataSource.getAppTheme()).called(1);
          verifyNever(localDataSource.getAppLanguage());
        },
      );
    },
  );


   group(
    'getLanguage function',
    () {
      test(
        'should return Right(AppLanguageEntity) when call the function and no errors happen',
        () async {
          when(localDataSource.getAppLanguage()).thenAnswer(
              (realInvocation) async => const Right(testAppLanguageModel));
          final result = await repository.getAppLanguage();
          expect(result, const Right(testAppLanguageEntity));
          verify(localDataSource.getAppLanguage()).called(1);
          verifyNever(localDataSource.getAppTheme());
        },
      );

      test(
        'should return Left(NoDataFialure) when call the function and no data stored error happen',
        () async {
          when(localDataSource.getAppLanguage()).thenAnswer(
              (realInvocation) async => const Left(testNoDataException));
          final result = await repository.getAppLanguage();
          expect(result, const Left(testNoDataFailure));
          verify(localDataSource.getAppLanguage()).called(1);
          verifyNever(localDataSource.getAppTheme());
        },
      );

       test(
        'should return Left(UnimplementedFailure) when call the function and unexpected error happen',
        () async {
          when(localDataSource.getAppLanguage()).thenAnswer(
              (realInvocation) async => const Left(testUnImplementedException));
          final result = await repository.getAppLanguage();
          expect(result, const Left(testUnImplementedFailure));
          verify(localDataSource.getAppLanguage()).called(1);
          verifyNever(localDataSource.getAppTheme());
        },
      );
    },
  );

}
