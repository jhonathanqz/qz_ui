import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  static TextStyle small8({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 8,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  static TextStyle small10({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 10,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  static TextStyle small12({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 12,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  static TextStyle small14({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 14,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  static TextStyle medium16({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 16,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  static TextStyle medium18({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 18,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  static TextStyle medium20({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 20,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  static TextStyle big22({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 22,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  static TextStyle big25({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 25,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  static TextStyle big28({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 28,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  static TextStyle big32({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 32,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  static TextStyle big54({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 54,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  static TextStyle title = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static TextStyle titleBold = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static TextStyle heading({bool isMobile = false}) => TextStyle(
        color: AppColors.primaryTextColor,
        fontSize: isMobile ? 20 : 25,
      );

  static TextStyle simple = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 14,
  );

  static TextStyle titleButton = TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
  );

  static TextStyle textSnackInformation = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static TextStyle labelStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    color: AppColors.primaryTextColor,
    fontSize: 16,
  );

  static TextStyle headingBold({bool isMobile = false}) => TextStyle(
        color: AppColors.primaryTextColor,
        fontSize: isMobile ? 20 : 25,
        fontWeight: FontWeight.bold,
      );

  static TextStyle simpleStyle = TextStyle(
    color: AppColors.white,
    fontSize: 14,
  );

  static TextStyle lighStyleBlack = TextStyle(
    fontWeight: FontWeight.w300,
    color: AppColors.black,
    fontSize: 14,
  );

  static TextStyle simpleDarkStyle = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 14,
  );
}
