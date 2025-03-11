import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TextFreeBooks extends StatelessWidget {
  const TextFreeBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Free Books',
          style: AppStyles.textSeBold18,
        ),
      ),
    );
  }
}
