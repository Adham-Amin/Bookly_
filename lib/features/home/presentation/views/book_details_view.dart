import 'package:bookly/core/utils/services_locator.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manager/similer_books/similer_books_cubit.dart';
import 'package:bookly/features/home/presentation/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: Icon(Icons.close),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => SimilerBooksCubit(
          getIt.get<HomeRepoImpl>(),
        ),
        child: BookDetailsViewBody(
          book: book,
        ),
      ),
    );
  }
}
