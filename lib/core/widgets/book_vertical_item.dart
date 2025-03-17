import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/core/utils/app_color.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/widgets/book_item.dart';
import 'package:bookly/features/home/presentation/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookVerticalItem extends StatelessWidget {
  const BookVerticalItem({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SizedBox(
        height: 120,
        child: InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.bookDetailsView, extra: book);
          },
          child: Row(
            children: [
              BookItem(imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? 'http://books.google.com/books/content?id=DXwRAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',),
              SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  spacing: 3,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.volumeInfo?.title ?? 'N/A',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.textNormal20.copyWith(fontFamily: AppAssets.gtSectra),
                    ),
                    Text(
                      book.volumeInfo?.authors?[0] ?? 'N/A',
                      style: AppStyles.textMedium14.copyWith(
                        color: AppColor.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Free',
                          style: AppStyles.textNormal20.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        BookRating(
                          rating: 4.7,
                          count: book.volumeInfo?.pageCount ?? 0,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
