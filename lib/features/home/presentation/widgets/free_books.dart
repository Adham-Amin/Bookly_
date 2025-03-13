import 'package:bookly/core/widgets/book_vertical_item.dart';
import 'package:flutter/material.dart';

class FreeBooks extends StatelessWidget {
  const FreeBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => BookVerticalItem(),
      ),
    );
  }
}
