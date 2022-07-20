import 'package:flutter/material.dart';

class AppData {
  static Locale? appLanguage;
  static ThemeMode appTheme = ThemeMode.system;

  static setAppLanguage(Locale? localeLanguage) {
    appLanguage = localeLanguage;
  }

  static setAppTheme(ThemeMode themeMode) {
    appTheme = themeMode;
  }
}