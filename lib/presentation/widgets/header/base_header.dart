import 'package:flutter/material.dart';

import 'package:qz_ui/presentation/style/app_edge_insets.dart';
import 'package:qz_ui/presentation/style/app_text_styles.dart';

class BaseHeader extends StatelessWidget {
  final List<InlineSpan> children;
  final TextAlign textAlign;
  final bool isPadding;

  const BaseHeader({
    Key? key,
    required this.children,
    this.textAlign = TextAlign.start,
    this.isPadding = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isPadding ? AppEdgeInsets.vsd : const EdgeInsets.only(),
      child: RichText(
        textAlign: textAlign,
        text: TextSpan(
          style: AppTextStyles.heading(),
          children: children,
        ),
      ),
    );
  }
}
