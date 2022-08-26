import 'package:flutter/material.dart';

@immutable
class AppBarWidget extends PreferredSize {
  AppBarWidget({
    Key? key,
    required String title,
    Widget? leading,
    required Widget widget,
    PreferredSizeWidget? bottom,
    Color? appBarColor,
    Color? colorText,
  }) : super(
          key: key,
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBar(
            backgroundColor: appBarColor ?? Colors.black,
            title: Text(
              title,
              style: TextStyle(
                color: colorText ?? Colors.black,
                fontSize: 18,
              ),
            ),
            centerTitle: true,
            leading: leading,
            actions: [widget],
            bottom: bottom,
          ),
        );
}
