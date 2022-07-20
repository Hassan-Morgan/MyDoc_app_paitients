import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_doc_app_for_patients/core/utils/app_text_styles.dart';

import 'app_colors.dart';

ThemeData get lightAppTheme => ThemeData(
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: AppColors.whiteBackgroundColor),
        backgroundColor: AppColors.whiteBackgroundColor,
        elevation: 0.0,
      ),
      scaffoldBackgroundColor: AppColors.whiteBackgroundColor,
      fontFamily: 'OpenSans',
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outLinedInputTheme,
      inputDecorationTheme: _inputDecorationTheme(
        borderColor: AppColors.lightThemeLightGreyColor,
        fillColor: AppColors.whiteColor,
      ),
      textTheme: TextTheme(
        headline1: AppTextStyles.boldTextStyle(
          fontColor: AppColors.lightThemeBlackColor,
          fontSize: 24,
        ),
      ),
    );

ThemeData get darkAppTheme => ThemeData(
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: AppColors.blackBackgroundColor),
        backgroundColor: AppColors.blackBackgroundColor,
        elevation: 0.0,
      ),
      scaffoldBackgroundColor: AppColors.blackBackgroundColor,
      fontFamily: 'OpenSans',
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outLinedInputTheme,
      inputDecorationTheme: _inputDecorationTheme(
        borderColor: AppColors.darkThemeDarkGreyColor,
        fillColor: AppColors.darkThemeLightBlackColor,
      ),
      textTheme: TextTheme(
        headline1: AppTextStyles.boldTextStyle(
          fontColor: AppColors.whiteColor,
          fontSize: 24,
        ),
      ),
    );

InputDecorationTheme _inputDecorationTheme(
        {required Color fillColor, required Color borderColor}) =>
    InputDecorationTheme(
      fillColor: fillColor,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24.0),
        borderSide: BorderSide(color: borderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24.0),
        borderSide: const BorderSide(color: AppColors.primaryBlueColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24.0),
        borderSide: const BorderSide(color: AppColors.redColor),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24.0),
        borderSide: const BorderSide(color: AppColors.primaryBlueColor),
      ),
    );

ElevatedButtonThemeData get _elevatedButtonTheme => ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return AppColors.lightPrimaryBlueColor;
            }
            return AppColors.primaryBlueColor;
          },
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (states) => const StadiumBorder(),
        ),
      ),
    );

OutlinedButtonThemeData get _outLinedInputTheme => OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: AppColors.primaryBlueColor,
        shape: const StadiumBorder(),
      ),
    );
