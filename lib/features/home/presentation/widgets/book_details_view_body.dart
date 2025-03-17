import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentation/widgets/similer_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;
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
                  BookDetailsSection(book: book,),
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