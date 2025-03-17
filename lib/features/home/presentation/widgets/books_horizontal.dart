import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:bookly/features/home/presentation/manager/featured_books/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BooksHorizontal extends StatelessWidget {
  const BooksHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksLoaded) {
          return SizedBox(
            height: 224,
            child: ListView.builder(
              itemCount: state.books.length,
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
                          '',
                    )),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomError(title: state.errMessage);
        } else {
          return CustomLoading();
        }
      },
    );
  }
}
