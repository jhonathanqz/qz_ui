import 'package:flutter/material.dart';

import 'package:qz_ui/presentation/style/app_colors.dart';
import 'package:qz_ui/presentation/style/app_edge_insets.dart';
import 'package:qz_ui/presentation/style/app_spacing.dart';
import 'package:qz_ui/presentation/style/app_text_styles.dart';

@immutable
class ButtonPrimary extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final bool loading;
  final Color? colorButton;
  final Color? colorText;
  final bool elevation;
  final bool isEnabled;
  final bool isEnabledIcon;
  final IconData? iconButton;
  final Color? colorIcon;
  final VoidCallback? onLongPress;
  final VoidCallback? onDoubleTap;

  const ButtonPrimary({
    Key? key,
    this.onTap,
    required this.title,
    this.loading = false,
    this.colorButton,
    this.colorText,
    this.elevation = false,
    this.isEnabled = true,
    this.isEnabledIcon = false,
    this.iconButton,
    this.colorIcon,
    this.onLongPress,
    this.onDoubleTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: onLongPress,
      onDoubleTap: onDoubleTap,
      onTap: isEnabled
          ? loading
              ? null
              : onTap
          : null,
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        color: isEnabled
            ? colorButton ?? Colors.blue
            : const Color.fromARGB(255, 211, 208, 208),
        elevation: elevation ? 5.0 : 0.0,
        child: Padding(
          padding: AppEdgeInsets.vsdm,
          child: Center(
            child: loading
                ? _loading
                : isEnabledIcon
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            iconButton ?? Icons.check,
                            color: colorIcon ?? Colors.black,
                          ),
                          AppSpacing.minW,
                          Text(
                            title,
                            style: AppTextStyles.titleButton.copyWith(
                              color: isEnabled
                                  ? colorText ?? Colors.black
                                  : Colors.grey[700],
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    : Text(
                        title,
                        style: AppTextStyles.titleButton.copyWith(
                          color: isEnabled
                              ? colorText ?? Colors.black
                              : Colors.grey[700],
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
          ),
        ),
      ),
    );
  }

  Widget get _loading => Padding(
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            isEnabled ? AppColors.white : AppColors.black,
          ),
        ),
      );
}
