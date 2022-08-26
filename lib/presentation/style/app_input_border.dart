import 'package:flutter/material.dart';

import 'package:qz_ui/presentation/style/app_colors.dart';

class AppInputBorder {
  static OutlineInputBorder inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
  );

  static OutlineInputBorder focusedInputBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey[900]!,
    ),
    borderRadius: BorderRadius.circular(15),
  );

  static OutlineInputBorder focusedInputBorderLight = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey[100]!,
    ),
    borderRadius: BorderRadius.circular(15),
  );

  static BoxDecoration borderRadius = BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.circular(10),
  );

  static BoxDecoration roundedBorder = BoxDecoration(
    borderRadius: const BorderRadius.all(
      Radius.circular(20),
    ),
    border: Border.all(
      color: AppColors.black,
    ),
  );

  static BoxDecoration outlineBorder = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
      color: Colors.grey[900]!,
      width: 1,
    ),
  );

  static BorderRadius borderRadius25 = const BorderRadius.all(
    Radius.circular(25),
  );

  static BorderRadius borderRadiusAll = BorderRadius.circular(10);

  static BorderRadius borderRadiusRound = BorderRadius.circular(20);

  static Border borderInputInformation = Border.all(
    width: 2,
    color: AppColors.white,
  );

  static Border borderInputInformationDark = Border.all(
    width: 2,
    color: AppColors.grey,
  );
}
