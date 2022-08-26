import 'package:flutter/material.dart';

import 'package:qz_ui/presentation/style/app_spacing.dart';

class ResponsiveBody extends StatelessWidget {
  const ResponsiveBody({
    Key? key,
    this.isTablet = false,
    this.children1,
    this.children2,
    this.flex1,
    this.flex2,
  }) : super(key: key);
  final bool isTablet;
  final List<Widget>? children1;
  final List<Widget>? children2;
  final int? flex1;
  final int? flex2;

  @override
  Widget build(BuildContext context) {
    return isTablet
        ? Container(
            child: Row(
              children: [
                Flexible(
                  flex: flex1 ?? 1,
                  child: Column(
                    children: children1 ?? [],
                  ),
                ),
                AppSpacing.minW,
                Flexible(
                  flex: flex2 ?? 1,
                  child: Column(
                    children: children2 ?? [],
                  ),
                ),
              ],
            ),
          )
        : Container(
            child: Column(
              children: children1 ?? [],
            ),
          );
  }
}
