import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/core/widgets/book_vertical_item.dart';
import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:bookly/features/search/presentation/manager/search_books/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBooks extends StatelessWidget {
  const SearchBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksLoaded) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.books.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => BookVerticalItem(
                book: state.books[index],
              ),
            ),
          );
        } else if (state is SearchBooksFailure) {
          return CustomError(title: state.errMessage);
        } else if (state is SearchBooksLoading) {
          return CustomLoading();
        } else {
          return Center(
            child: Text(
              'Search Now',
              style: AppStyles.textMedium16,
            ),
          );
        }
      },
    );
  }
}
