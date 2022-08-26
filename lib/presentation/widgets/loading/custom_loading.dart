import 'package:flutter/material.dart';

import 'package:loading_animation_widget/loading_animation_widget.dart';

Widget customLoading() {
  return SizedBox(
    height: 80,
    child: LoadingAnimationWidget.threeRotatingDots(
      color: Colors.black,
      size: 80,
    ),
  );
}
