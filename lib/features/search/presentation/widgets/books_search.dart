import 'package:bookly/core/widgets/book_vertical_item.dart';
import 'package:flutter/material.dart';

class SearchBooks extends StatelessWidget {
  const SearchBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => BookVerticalItem(),
      ),
    );
  }
}
