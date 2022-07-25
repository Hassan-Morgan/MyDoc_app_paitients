import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_doc_app_for_patients/core/utils/app_text_styles.dart';

import 'app_colors.dart';

ThemeData get lightAppTheme => ThemeData(
      appBarTheme: AppBarTheme(
        titleTextStyle: AppTextStyles.headLine1(AppColors.lightThemeBlackColor),
        iconTheme: const IconThemeData(
          color: AppColors.lightThemeBlackColor,
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: AppColors.whiteBackgroundColor),
        backgroundColor: AppColors.whiteBackgroundColor,
        elevation: 0.0,
      ),
      primaryColor: AppColors.whiteColor,
      scaffoldBackgroundColor: AppColors.whiteBackgroundColor,
      fontFamily: 'OpenSans',
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outLinedInputTheme,
      inputDecorationTheme: _inputDecorationTheme(
        borderColor: AppColors.lightThemeLightGreyColor,
        fillColor: AppColors.whiteColor,
      ),
      textTheme: TextTheme(
        headline1: AppTextStyles.headLine1(AppColors.lightThemeBlackColor),
        subtitle1: AppTextStyles.headLine2(AppColors.lightThemeDarkGreyColor),
      ),
    );

ThemeData get darkAppTheme => ThemeData(
      appBarTheme: AppBarTheme(
        titleTextStyle: AppTextStyles.headLine1(AppColors.whiteColor),
        iconTheme: const IconThemeData(
          color: AppColors.whiteColor,
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: AppColors.blackBackgroundColor),
        backgroundColor: AppColors.blackBackgroundColor,
        elevation: 0.0,
      ),
      scaffoldBackgroundColor: AppColors.blackBackgroundColor,
      primaryColor: AppColors.darkThemeLightBlackColor,
      fontFamily: 'OpenSans',
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outLinedInputTheme,
      inputDecorationTheme: _inputDecorationTheme(
        borderColor: AppColors.darkThemeDarkGreyColor,
        fillColor: AppColors.darkThemeLightBlackColor,
      ),
      textTheme: TextTheme(
        headline1: AppTextStyles.headLine1(AppColors.whiteColor),
        subtitle1: AppTextStyles.headLine2(AppColors.darkThemeLighGreyColor),
      ),
    );

InputDecorationTheme _inputDecorationTheme({
  required Color fillColor,
  required Color borderColor,
}) =>
    InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 28.0),
      fillColor: fillColor,
      hintStyle: AppTextStyles.textFormFieldHintStyle(borderColor),
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24.0),
        borderSide: BorderSide(color: borderColor, width: 1.5),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24.0),
        borderSide:
            const BorderSide(color: AppColors.primaryBlueColor, width: 1.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24.0),
        borderSide: const BorderSide(color: AppColors.redColor, width: 1.5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24.0),
        borderSide: const BorderSide(color: AppColors.redColor, width: 1.5),
      ),
    );

ElevatedButtonThemeData get _elevatedButtonTheme => ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.resolveWith<Size>(
            (states) => const Size(double.infinity, 45)),
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
