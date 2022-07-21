import 'package:flutter/material.dart';

class AppPref {
  static Locale? appLanguage;
  static ThemeMode appTheme = ThemeMode.system;

  static setAppLanguage(String? language) {
    if (language != null) {
      appLanguage = Locale(language);
    } else {
      appLanguage = null;
    }
  }

  static setAppTheme(ThemeMode themeMode) {
    appTheme = themeMode;
  }
}
