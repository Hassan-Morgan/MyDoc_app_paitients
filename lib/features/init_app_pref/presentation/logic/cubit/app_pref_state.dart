part of 'app_pref_cubit.dart';

@freezed
class AppPrefStates with _$AppPrefStates {
  factory AppPrefStates({
    required bool finishGetAppTheme,
    required bool finishGetAppLanguage,
  }) = _LocalAppPrefState;

  factory AppPrefStates.initial() => AppPrefStates(
        finishGetAppTheme: false,
        finishGetAppLanguage: false,
      );
}
