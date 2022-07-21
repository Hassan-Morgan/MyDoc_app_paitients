import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart';
import 'package:my_doc_app_for_patients/core/utils/app_pref.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/entities/app_language_entity.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/entities/app_theme_entity.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/usecases/get_app_language_usecase.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/usecases/get_app_theme_usecase.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/presentation/logic/cubit/app_pref_cubit.dart';

import 'local_app_pref_cubit_test.mocks.dart';

@GenerateMocks([GetAppLanguageUsecase, GetAppThemeUsecase])
void main() {
  late MockGetAppLanguageUsecase languageUsecase;
  late MockGetAppThemeUsecase themeUsecase;
  late AppPrefCubit cubit;

  setUp(
    () {
      languageUsecase = MockGetAppLanguageUsecase();
      themeUsecase = MockGetAppThemeUsecase();
    },
  );

  const AppThemeEntity testAppTheme = AppThemeEntity(ThemeMode.light);
  const CashFailures testCashFailure = CashFailures.noDataStored();
  const AppLanguageEntity testAppLangauge = AppLanguageEntity('ar');
  final AppPrefStates testInitialState =
      AppPrefStates(finishGetAppTheme: false, finishGetAppLanguage: false);
  final AppPrefStates testEndState =
      AppPrefStates(finishGetAppTheme: true, finishGetAppLanguage: true);

  test(
    '''when intialize cubit and no errors happen when call the functions it should
      set appTheme to the returned theme and set language to the returned locale and
      emit the state to the LocalAppPrefState with two params being true
    ''',
    () async {
      when(themeUsecase(any)).thenAnswer(
        (realInvocation) async => const Right(testAppTheme),
      );
      when(languageUsecase(any)).thenAnswer(
        (realInvocation) async => const Right(testAppLangauge),
      );
      cubit = AppPrefCubit(themeUsecase, languageUsecase);
      expect(cubit.state, testInitialState);
      await untilCalled(themeUsecase(any));
      await untilCalled(languageUsecase(any));
      expect(AppPref.appTheme, ThemeMode.light);
      verify(themeUsecase(NoParams())).called(1);
      expect(AppPref.appLanguage, const Locale('ar'));
      verify(languageUsecase(NoParams())).called(1);
      expect(cubit.state, testEndState);
    },
  );
  test(
    '''when intialize cubit and cashFailure happen when call the getAppTheme only it should
      set appTheme to the system theme mode and set language to the returned locale and
      emit the state to the LocalAppPrefState with two params being true
    ''',
    () async {
      when(themeUsecase(any)).thenAnswer(
        (realInvocation) async => const Left(testCashFailure),
      );
      when(languageUsecase(any)).thenAnswer(
        (realInvocation) async => const Right(testAppLangauge),
      );
      cubit = AppPrefCubit(themeUsecase, languageUsecase);
      expect(cubit.state, testInitialState);
      await untilCalled(themeUsecase(any));
      await untilCalled(languageUsecase(any));
      expect(AppPref.appTheme, ThemeMode.system);
      verify(themeUsecase(NoParams())).called(1);
      expect(AppPref.appLanguage, const Locale('ar'));
      verify(languageUsecase(NoParams())).called(1);
      expect(cubit.state, testEndState);
    },
  );

  test(
    '''when intialize cubit and cashFailure happen when call the getAppLanguage only 
      it should set appTheme to the returned theme and set language to null and
      emit the state to the LocalAppPrefState with two params being true
    ''',
    () async {
      when(themeUsecase(any)).thenAnswer(
        (realInvocation) async => const Right(testAppTheme),
      );
      when(languageUsecase(any)).thenAnswer(
        (realInvocation) async => const Left(testCashFailure),
      );
      cubit = AppPrefCubit(themeUsecase, languageUsecase);
      expect(cubit.state, testInitialState);
      await untilCalled(themeUsecase(any));
      await untilCalled(languageUsecase(any));
      expect(AppPref.appTheme, ThemeMode.light);
      verify(themeUsecase(NoParams())).called(1);
      expect(AppPref.appLanguage, null);
      verify(languageUsecase(NoParams())).called(1);
      expect(cubit.state, testEndState);
    },
  );

  test(
    '''when intialize cubit and cashFailure happen when call the functions it should
      set appTheme to the system theme mode and set language to null and
      emit the state to the LocalAppPrefState with two params being true
    ''',
    () async {
      when(themeUsecase(any)).thenAnswer(
        (realInvocation) async => const Left(testCashFailure),
      );
      when(languageUsecase(any)).thenAnswer(
        (realInvocation) async => const Left(testCashFailure),
      );
      cubit = AppPrefCubit(themeUsecase, languageUsecase);
      expect(cubit.state, testInitialState);
      await untilCalled(themeUsecase(any));
      await untilCalled(languageUsecase(any));
      expect(AppPref.appTheme, ThemeMode.system);
      verify(themeUsecase(NoParams())).called(1);
      expect(AppPref.appLanguage, null);
      verify(languageUsecase(NoParams())).called(1);
      expect(cubit.state, testEndState);
    },
  );
}
