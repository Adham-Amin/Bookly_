import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:bookly/features/home/presentation/manager/similer_books/similer_books_cubit.dart';
import 'package:bookly/features/home/presentation/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HorizontalBooksDetails extends StatelessWidget {
  const HorizontalBooksDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
      builder: (context, state) {
        if (state is SimilerBooksLoaded) {
          return SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: 10,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 16),
                child: InkWell(
                  onTap: () => GoRouter.of(context).push(
                      AppRouter.bookDetailsView,
                      extra: state.books[index]),
                  child: BookItem(
                    imageUrl: state
                            .books[index].volumeInfo?.imageLinks?.thumbnail ??
                        'http://books.google.com/books/content?id=DXwRAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
                  ),
                ),
              ),
            ),
          );
        } else if (state is SimilerBooksFailure) {
          return CustomError(title: state.errMessage);
        } else {
          return CustomLoading();
        }
      },
    );
  }
}
