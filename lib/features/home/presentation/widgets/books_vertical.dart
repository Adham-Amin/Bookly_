import 'package:bookly/features/home/presentation/widgets/book_vertical_item.dart';
import 'package:flutter/material.dart';

class BooksVertical extends StatelessWidget {
  const BooksVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => BookVerticalItem(),
      ),
    );
  }
}
