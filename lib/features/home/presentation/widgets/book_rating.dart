import 'package:bookly/core/utils/app_color.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.5',
          style: AppStyles.textMedium16,
        ),
        SizedBox(
          width: 9,
        ),
        Text(
          '(250)',
          style: AppStyles.textMedium14.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColor.grey,
          ),
        ),
      ],
    );
  }
}
