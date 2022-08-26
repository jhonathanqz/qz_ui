import 'package:flutter/material.dart';

import 'package:qz_ui/presentation/style/app_edge_insets.dart';
import 'package:qz_ui/presentation/style/app_input_border.dart';

@immutable
class AppBarSearch extends PreferredSize {
  AppBarSearch({
    Key? key,
    Widget? leading,
    required Widget widgetSearch,
    Color? appBarColor,
    List<Widget>? actions,
  }) : super(
          key: key,
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            backgroundColor: appBarColor ?? Colors.black,
            toolbarHeight: 60.0,
            title: Container(
              margin: AppEdgeInsets.tsd,
              decoration: AppInputBorder.borderRadius,
              child: widgetSearch,
            ),
            leading: leading,
            actions: actions,
          ),
        );
}
