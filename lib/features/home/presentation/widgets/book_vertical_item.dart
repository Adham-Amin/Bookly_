import 'package:bookly/core/utils/app_color.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/core/widgets/book_item.dart';
import 'package:bookly/core/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookVerticalItem extends StatelessWidget {
  const BookVerticalItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SizedBox(
        height: 120,
        child: InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.bookDetailsView);
          },
          child: Row(
            children: [
              BookItem(),
              SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  spacing: 3,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.textNormal20,
                    ),
                    Text(
                      'J.K. Rowling',
                      style: AppStyles.textMedium14.copyWith(
                        color: AppColor.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '19.99 €',
                          style: AppStyles.textNormal20.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        BookRating(),
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
