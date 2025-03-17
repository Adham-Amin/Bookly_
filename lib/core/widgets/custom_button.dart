import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.borderRadius,
    required this.textColor,
    this.onPressed,
  });

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: Text(
          text,
          style: AppStyles.textNormal20.copyWith(fontWeight: FontWeight.w700, color: textColor),
        ),
      ),
    );
  }
}
