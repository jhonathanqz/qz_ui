import 'package:flutter/material.dart';

class OmniTheme {
  OmniTheme();

  Color get primaryColor => const Color(0xFFFF6600);
  Color get lightBlue => const Color(0xFF98E6FF);
  Color get darkBlue => const Color(0xFF203354);
  Color get grayColor => const Color(0xFF5C5C5C);
  Color get lightGrayColor => const Color(0xFFD4D5CE);
  Color get lightBege => const Color(0xFFFEFFF8);

  TextStyle small8({
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

  TextStyle small10({
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

  TextStyle small12({
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

  TextStyle small14({
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

  TextStyle medium16({
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

  TextStyle medium18({
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

  TextStyle medium20({
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

  TextStyle big22({
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

  TextStyle big28({
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

  TextStyle big32({
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

  TextStyle big54({
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
}
