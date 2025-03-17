import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/core/utils/app_color.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/widgets/book_item.dart';
import 'package:bookly/features/home/presentation/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/widgets/button_books_details.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.24,
          ),
          child: BookItem(imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? 'http://books.google.com/books/content?id=DXwRAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
        ),
        SizedBox(
          height: 42,
        ),
        Text(
          book.volumeInfo?.title ?? 'N/A',
          textAlign: TextAlign.center,
          style:
              AppStyles.textNormal30.copyWith(fontFamily: AppAssets.gtSectra),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          book.volumeInfo?.authors?[0] ?? 'N/A',
          style: AppStyles.textSeBold18.copyWith(
              color: AppColor.grey,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic),
        ),
        SizedBox(
          height: 12,
        ),
        BookRating(
          rating: 4.7,
          count: book.volumeInfo?.pageCount ?? 0,
        ),
        SizedBox(
          height: 36,
        ),
        ButtonBookDetails(),
      ],
    );
  }
}
