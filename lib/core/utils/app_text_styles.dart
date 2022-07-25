import 'package:flutter/cupertino.dart';

class AppTextStyles {
  static TextStyle _textStyle({
    required FontWeight fontWeight,
    required Color fontColor,
    required double fontSize,
  }) =>
      TextStyle(
        fontWeight: fontWeight,
        color: fontColor,
        fontSize: fontSize,
      );

  static TextStyle _boldTextStyle({
    required Color fontColor,
    required double fontSize,
  }) =>
      _textStyle(
        fontWeight: FontWeight.w700,
        fontColor: fontColor,
        fontSize: fontSize,
      );

  static TextStyle _semiBoldTextStyle({
    required Color fontColor,
    required double fontSize,
  }) =>
      _textStyle(
        fontWeight: FontWeight.w600,
        fontColor: fontColor,
        fontSize: fontSize,
      );

  static TextStyle _mediumTextStyle({
    required Color fontColor,
    required double fontSize,
  }) =>
      _textStyle(
        fontWeight: FontWeight.w500,
        fontColor: fontColor,
        fontSize: fontSize,
      );

  static TextStyle _regularTextStyle({
    required Color fontColor,
    required double fontSize,
  }) =>
      _textStyle(
        fontWeight: FontWeight.w400,
        fontColor: fontColor,
        fontSize: fontSize,
      );

  static TextStyle _lightTextStyle({
    required Color fontColor,
    required double fontSize,
  }) =>
      _textStyle(
        fontWeight: FontWeight.w300,
        fontColor: fontColor,
        fontSize: fontSize,
      );

  static TextStyle headLine1(Color fontColor) => _boldTextStyle(
        fontColor: fontColor,
        fontSize: 18,
      );

  static TextStyle headLine2(Color fontColor) => _semiBoldTextStyle(
        fontColor: fontColor,
        fontSize: 16,
      );

  static TextStyle textFormFieldHintStyle(Color fontColor) => _regularTextStyle(
        fontColor: fontColor,
        fontSize: 14,
      );
}
