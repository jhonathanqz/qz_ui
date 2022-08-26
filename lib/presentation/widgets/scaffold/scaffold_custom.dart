import 'package:flutter/material.dart';

import 'package:qz_ui/presentation/widgets/loading/loading.dart';

class ScaffoldCustom extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  final Widget? header;
  final Widget? footer;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final AppBar appBar;
  final Color? backgroundColor;

  const ScaffoldCustom({
    Key? key,
    required this.appBar,
    required this.child,
    this.isLoading = false,
    this.header,
    this.footer,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      floatingActionButton: floatingActionButton ?? Container(),
      floatingActionButtonLocation:
          floatingActionButtonLocation ?? FloatingActionButtonLocation.endFloat,
      backgroundColor: backgroundColor ?? Colors.white,
      body: Loading(
        isLoading: isLoading,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header ?? Container(),
            Expanded(child: child),
            footer ?? Container(),
          ],
        ),
      ),
    );
  }
}
