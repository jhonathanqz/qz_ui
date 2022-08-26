import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefreshWidget extends StatelessWidget {
  const RefreshWidget({
    Key? key,
    required this.child,
    required this.keyRefresh,
    required this.onRefresh,
    this.color,
  }) : super(key: key);
  final GlobalKey<RefreshIndicatorState> keyRefresh;
  final Widget child;
  final Future Function() onRefresh;
  final Color? color;

  @override
  Widget build(BuildContext context) =>
      Platform.isAndroid ? buildAndroidList() : buildIOSList();

  Widget buildAndroidList() => RefreshIndicator(
        key: keyRefresh,
        onRefresh: onRefresh,
        color: color ?? Colors.black,
        child: child,
      );

  Widget buildIOSList() => CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          CupertinoSliverRefreshControl(onRefresh: onRefresh),
          SliverToBoxAdapter(child: child),
        ],
      );
}
