import 'package:flutter/material.dart';

@immutable
class AppBarTab extends PreferredSize {
  AppBarTab({
    Key? key,
    required String title,
    Widget? leading,
    required Widget widget,
    PreferredSizeWidget? bottom,
    Color? appBarColor,
    Color? textColor,
  }) : super(
          key: key,
          preferredSize: const Size.fromHeight(130),
          child: AppBar(
            backgroundColor: appBarColor ?? Colors.black,
            title: Text(
              title,
              style: TextStyle(
                color: textColor ?? Colors.white,
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
