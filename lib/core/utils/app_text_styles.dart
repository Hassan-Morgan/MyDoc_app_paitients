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

  static TextStyle boldTextStyle({
    required Color fontColor,
    required double fontSize,
  }) =>
      _textStyle(
        fontWeight: FontWeight.w700,
        fontColor: fontColor,
        fontSize: fontSize,
      );

 static TextStyle semiBoldTextStyle({
    required Color fontColor,
    required double fontSize,
  }) =>
      _textStyle(
        fontWeight: FontWeight.w600,
        fontColor: fontColor,
        fontSize: fontSize,
      );

 static TextStyle mediumTextStyle({
    required Color fontColor,
    required double fontSize,
  }) =>
      _textStyle(
        fontWeight: FontWeight.w500,
        fontColor: fontColor,
        fontSize: fontSize,
      );

 static TextStyle regularTextStyle({
    required Color fontColor,
    required double fontSize,
  }) =>
      _textStyle(
        fontWeight: FontWeight.w400,
        fontColor: fontColor,
        fontSize: fontSize,
      );

 static TextStyle lightTextStyle({
    required Color fontColor,
    required double fontSize,
  }) =>
      _textStyle(
        fontWeight: FontWeight.w300,
        fontColor: fontColor,
        fontSize: fontSize,
      );
}
