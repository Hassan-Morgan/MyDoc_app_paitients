import 'package:flutter/material.dart';
import 'package:my_doc_app_for_patients/core/utils/app_constants.dart';

class AppThemeModel {
  final ThemeMode appTheme;

  const AppThemeModel(this.appTheme);

  factory AppThemeModel.fromString(String value) {
    if (value == AppConstants.lightThemeMode) {
      return const AppThemeModel(ThemeMode.light);
    }
    if (value == AppConstants.darkThemeMode) {
      return const AppThemeModel(ThemeMode.dark);
    }
    return const AppThemeModel(ThemeMode.system);
  }
}
