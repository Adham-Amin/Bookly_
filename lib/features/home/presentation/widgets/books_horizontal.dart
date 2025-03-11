import 'package:bookly/core/widgets/book_item.dart';
import 'package:flutter/material.dart';

class BooksHorizontal extends StatelessWidget {
  const BooksHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 16),
          child: const BookItem(),
        ),
      ),
    );
  }
}
