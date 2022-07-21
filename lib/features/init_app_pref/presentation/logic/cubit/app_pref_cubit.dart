import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/usecase/base_usecase.dart';
import '../../../../../core/utils/app_pref.dart';
import '../../../domain/usecases/get_app_language_usecase.dart';
import '../../../domain/usecases/get_app_theme_usecase.dart';

part 'app_pref_state.dart';
part 'app_pref_cubit.freezed.dart';

@lazySingleton
class AppPrefCubit extends Cubit<AppPrefStates> {
  AppPrefCubit(this._appThemeUsecase, this._appLanguageUsecase)
      : super(AppPrefStates.initial()) {
    getAppTheme();
    getAppLanguage();
  }

  final GetAppThemeUsecase _appThemeUsecase;
  final GetAppLanguageUsecase _appLanguageUsecase;

  void getAppTheme() async {
    final themeOrFailure = await _appThemeUsecase(NoParams());
    themeOrFailure.fold(
      (l) {
        AppPref.setAppTheme(ThemeMode.system);
        emit(state.copyWith(finishGetAppTheme: true));
      },
      (r) {
        AppPref.setAppTheme(r.appTheme);
        emit(state.copyWith(finishGetAppTheme: true));
      },
    );
  }

  void getAppLanguage() async {
    final localeOrFailure = await _appLanguageUsecase(NoParams());
    localeOrFailure.fold(
      (l) {
        AppPref.setAppLanguage(null);
        emit(state.copyWith(finishGetAppLanguage: true));
      },
      (r) {
        AppPref.setAppLanguage(r.appLangauge);
        emit(state.copyWith(finishGetAppLanguage: true));
      },
    );
  }
}
