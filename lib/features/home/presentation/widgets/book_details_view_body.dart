import 'package:bookly/core/utils/app_color.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/core/widgets/book_item.dart';
import 'package:bookly/features/home/presentation/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/widgets/button_books_details.dart';
import 'package:bookly/features/home/presentation/widgets/hori_books_details.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
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
            style: AppStyles.textNormal30,
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
          SizedBox(
            height: 48,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: AppStyles.textMedium14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          HorizontalBooksDetails(),
        ],
      ),
    );
  }
}

