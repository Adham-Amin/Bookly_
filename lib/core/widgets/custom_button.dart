import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.borderRadius,
      required this.textColor});

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: Text(
          text,
          style: AppStyles.textNormal20.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
