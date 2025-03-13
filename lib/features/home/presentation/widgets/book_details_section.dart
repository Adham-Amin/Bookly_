import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/core/utils/app_color.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/presentation/widgets/book_item.dart';
import 'package:bookly/features/home/presentation/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/widgets/button_books_details.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.24,
          ),
          child: BookItem(),
        ),
        SizedBox(
          height: 42,
        ),
        Text(
          'The Jungle Book',
          style:
              AppStyles.textNormal30.copyWith(fontFamily: AppAssets.gtSectra),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          'Rudyard Kipling',
          style: AppStyles.textSeBold18.copyWith(
              color: AppColor.grey,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic),
        ),
        SizedBox(
          height: 12,
        ),
        BookRating(),
        SizedBox(
          height: 36,
        ),
        ButtonBookDetails(),
      ],
    );
  }
}
