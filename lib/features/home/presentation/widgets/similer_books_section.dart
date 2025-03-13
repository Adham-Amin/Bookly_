import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/presentation/widgets/hori_books_details.dart';
import 'package:flutter/material.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: AppStyles.textMedium14.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 16,
        ),
        HorizontalBooksDetails(),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
