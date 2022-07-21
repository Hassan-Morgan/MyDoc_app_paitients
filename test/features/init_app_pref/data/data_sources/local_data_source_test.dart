import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/end_points/local_cash_end_points.dart';
import 'package:my_doc_app_for_patients/core/errors/app_exceptions.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/data/data_sources/local_data_source.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/data/models/app_language_model.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/data/models/app_theme_model.dart';

import 'local_data_source_test.mocks.dart';

@GenerateMocks([HiveInterface, Box])
void main() {
  late MockHiveInterface hive;
  late AppPrefLocalDataSource localDataSource;

  setUp(
    () {
      hive = MockHiveInterface();
      localDataSource = AppPrefLocalDataSourceImpl(hive);
    },
  );
  final box = MockBox();
  const testThemeResponseString = 'dark';
  const testLanguageResponseString = 'ar';
  const testNoDataException = CashExceptions.noDataException();
  const testUnImplementedException = CashExceptions.unImplementedException();
  const testThemeModel = AppThemeModel(ThemeMode.dark);
  const testLanguageModel = AppLanguageModel(testLanguageResponseString);

  group(
    'getAppTheme',
    () {
      test(
        'should retrun ThemeModel when call the function and no error happen',
        () async {
          when(hive.openBox(LOCAL_PREF_BOX_KEY))
              .thenAnswer((realInvocation) async => box);
          when(box.get(any)).thenReturn(testThemeResponseString);
          final result = await localDataSource.getAppTheme();
          expect(result, const Right(testThemeModel));
          verify(box.get(LOCAL_PREF_THEME_FIELD_KEY)).called(1);
          verify(hive.openBox(LOCAL_PREF_BOX_KEY)).called(1);
          verifyNever(box.close());
        },
      );

      test(
        'should retrun NoDataException when call the function and returen null',
        () async {
          when(hive.openBox(LOCAL_PREF_BOX_KEY))
              .thenAnswer((realInvocation) async => box);
          when(box.get(any)).thenReturn(null);
          final result = await localDataSource.getAppTheme();
          expect(result, const Left(testNoDataException));
          verify(box.get(LOCAL_PREF_THEME_FIELD_KEY)).called(1);
          verify(hive.openBox(LOCAL_PREF_BOX_KEY)).called(1);
          verifyNever(box.close());
        },
      );

      test(
        'should retrun UnimplementedExcption when call the function and throw any error',
        () async {
          when(hive.openBox(LOCAL_PREF_BOX_KEY))
              .thenAnswer((realInvocation) async => box);
          when(box.get(any)).thenThrow(Error());
          final result = await localDataSource.getAppTheme();
          expect(result, const Left(testUnImplementedException));
          verify(box.get(LOCAL_PREF_THEME_FIELD_KEY)).called(1);
          verify(hive.openBox(LOCAL_PREF_BOX_KEY)).called(1);
          verifyNever(box.close());
        },
      );
    },
  );

  group(
    'getAppLanguage',
    () {
      test(
        'should retrun LanguageModel when call the function and no error happen',
        () async {
          when(hive.openBox(LOCAL_PREF_BOX_KEY))
              .thenAnswer((realInvocation) async => box);
          when(box.get(any)).thenReturn(testLanguageResponseString);
          final result = await localDataSource.getAppLanguage();
          expect(result, const Right(testLanguageModel));
          verify(box.get(LOCAL_PREF_LANGUAGE_FIELD_KEY)).called(1);
          verify(hive.openBox(LOCAL_PREF_BOX_KEY)).called(1);
          verify(box.close()).called(1);
        },
      );

      test(
        'should retrun NoDataException when call the function and returen null',
        () async {
          when(hive.openBox(LOCAL_PREF_BOX_KEY))
              .thenAnswer((realInvocation) async => box);
          when(box.get(any)).thenReturn(null);
          final result = await localDataSource.getAppLanguage();
          expect(result, const Left(testNoDataException));
          verify(box.get(LOCAL_PREF_LANGUAGE_FIELD_KEY)).called(1);
          verify(hive.openBox(LOCAL_PREF_BOX_KEY)).called(1);
          verify(box.close()).called(1);
        },
      );

      test(
        'should retrun UnimplementedExcption when call the function and throw any error',
        () async {
          when(hive.openBox(LOCAL_PREF_BOX_KEY))
              .thenAnswer((realInvocation) async => box);
          when(box.get(any)).thenThrow(Error());
          final result = await localDataSource.getAppLanguage();
          expect(result, const Left(testUnImplementedException));
          verify(box.get(LOCAL_PREF_LANGUAGE_FIELD_KEY)).called(1);
          verify(hive.openBox(LOCAL_PREF_BOX_KEY)).called(1);
          verify(box.close()).called(1);
        },
      );
    },
  );
}
