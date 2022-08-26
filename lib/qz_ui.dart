library qz_ui;

import 'package:flutter/material.dart';

import 'package:qz_ui/widgets/button/button_primary.dart';

Widget buttonUI({
  VoidCallback? onTap,
  required String title,
  bool loading = false,
  Color? colorButton,
  Color? colorText,
  bool elevation = false,
  bool isEnabled = true,
  bool isEnabledIcon = false,
  IconData? iconButton,
  Color? colorIcon,
  VoidCallback? onLongPress,
  VoidCallback? onDoubleTap,
}) =>
    ButtonPrimary(
      title: title,
      onTap: onTap,
      loading: loading,
      colorButton: colorButton,
      colorText: colorText,
      elevation: elevation,
      isEnabled: isEnabled,
      isEnabledIcon: isEnabledIcon,
      iconButton: iconButton,
      colorIcon: colorIcon,
      onLongPress: onLongPress,
      onDoubleTap: onDoubleTap,
    );

LoadingUI() => CircularProgressIndicator();
