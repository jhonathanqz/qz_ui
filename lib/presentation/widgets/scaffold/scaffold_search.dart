import 'package:flutter/material.dart';

import 'package:qz_ui/presentation/widgets/appbar/app_bar_search.dart';
import 'package:qz_ui/presentation/widgets/loading/loading.dart';

class ScaffoldSearch extends StatelessWidget {
  final Widget child;
  final Widget? leading;
  final bool isLoading;
  final Widget? header;
  final Widget? footer;
  final Widget? floatingActionButton;
  final PreferredSizeWidget? bottom;
  final Color? backgroundColor;

  final Widget widgetSearch;

  const ScaffoldSearch({
    Key? key,
    required this.child,
    this.isLoading = false,
    this.leading,
    this.header,
    this.footer,
    this.floatingActionButton,
    this.bottom,
    this.backgroundColor,
    required this.widgetSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSearch(
        leading: leading,
        widgetSearch: widgetSearch,
      ),
      floatingActionButton: floatingActionButton ?? Container(),
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
