import 'package:bookly/features/home/presentation/widgets/book_item.dart';
import 'package:flutter/material.dart';

class HorizontalBooksDetails extends StatelessWidget {
  const HorizontalBooksDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: 10,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 16),
          child: const BookItem(),
        ),
      ),
    );
  }
}
