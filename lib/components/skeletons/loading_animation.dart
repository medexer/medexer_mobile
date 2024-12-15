import 'package:flutter/material.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingAnimation extends StatelessWidget {
  final double size;
  final Color color;
  const LoadingAnimation({
    super.key,
    this.size = 28,
    this.color = AppColors.buttonPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.hexagonDots(
      size: size,
      color: color,
    );
  }
}
