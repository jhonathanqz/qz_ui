import 'package:flutter/material.dart';

import 'package:qz_ui/presentation/style/app_edge_insets.dart';
import 'package:qz_ui/presentation/style/app_spacing.dart';
import 'package:qz_ui/presentation/style/app_text_styles.dart';
import 'package:qz_ui/presentation/widgets/button/button_primary.dart';

class SimpleModal extends StatelessWidget {
  const SimpleModal({
    Key? key,
    required this.title,
    required this.subtitle,
    this.backText = 'Voltar',
    this.nextText = 'Continuar',
    required this.backTap,
    required this.nextTap,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String backText;
  final String nextText;
  final Function() backTap;
  final Function() nextTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppEdgeInsets.mdAll,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            title,
            style: AppTextStyles.titleBold.copyWith(fontSize: 18),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          AppSpacing.sm,
          Text(
            subtitle,
            style: AppTextStyles.labelStyle.copyWith(
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: AppEdgeInsets.hmd,
            child: ButtonPrimary(
              title: nextText,
              onTap: nextTap(),
            ),
          ),
        ],
      ),
    );
  }
}
