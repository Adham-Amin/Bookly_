import 'package:bookly/core/widgets/book_vertical_item.dart';
import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:bookly/features/home/presentation/manager/free_books/free_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FreeBooks extends StatelessWidget {
  const FreeBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FreeBooksCubit, FreeBooksState>(
      builder: (context, state) {
        if (state is FreeBooksLoaded) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (context, index) => BookVerticalItem(
                book: state.books[index],
              ),
            ),
          );
        }else if (state is FreeBooksFailure) {
          return SliverToBoxAdapter(child: CustomError(title: state.errMessage));
        } else {
          return SliverToBoxAdapter(child: CustomLoading());
        }
      },
    );
  }
}
