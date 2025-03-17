import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/manager/similer_books/similer_books_cubit.dart';
import 'package:bookly/features/home/presentation/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentation/widgets/similer_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsViewBody extends StatefulWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;

  @override
  State<BookDetailsViewBody> createState() => _BookDetailsViewBodyState();
}

class _BookDetailsViewBodyState extends State<BookDetailsViewBody> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilerBooksCubit>(context).fetchSimilerBooks(category: widget.book.volumeInfo!.categories![0]);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  BookDetailsSection(book: widget.book,),
                  Expanded(
                    child: SizedBox(
                      height: 48,
                    ),
                  ),
                  SimilerBooksSection()
                ],
              ),
            ),
          ],
        ),);
  }
}