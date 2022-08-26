import 'package:flutter/material.dart';

import 'package:qz_ui/presentation/style/app_colors.dart';
import 'package:qz_ui/presentation/style/app_spacing.dart';
import 'package:qz_ui/presentation/style/app_text_styles.dart';
import 'package:qz_ui/presentation/widgets/loading/color_loader.dart';
import 'package:qz_ui/presentation/widgets/loading/custom_loading.dart';

class Loading extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final bool isMessage;
  final String message;
  final Color? colorLoading;

  const Loading({
    Key? key,
    required this.isLoading,
    required this.child,
    this.isMessage = false,
    this.message = 'Processando...',
    this.colorLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        child,
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Visibility(
            visible: isLoading,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              color: AppColors.blurredBackground.withOpacity(0.7),
              child: isMessage
                  ? Center(
                      child: SizedBox(
                        height: 70,
                        child: Column(
                          children: [
                            Text(
                              message,
                              style: AppTextStyles.heading().copyWith(
                                color: Colors.black,
                              ),
                            ),
                            AppSpacing.md,
                            ColorLoader(
                              dotOneColor: colorLoading ?? Colors.black,
                              dotTwoColor: colorLoading ?? Colors.black,
                              dotThreeColor: colorLoading ?? Colors.black,
                            ),
                          ],
                        ),
                      ),
                    )
                  : Center(
                      child: customLoading(),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
