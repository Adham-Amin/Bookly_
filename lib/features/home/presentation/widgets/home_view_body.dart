import 'package:bookly/features/home/presentation/widgets/books_horizontal.dart';
import 'package:bookly/features/home/presentation/widgets/books_vertical.dart';
import 'package:bookly/features/home/presentation/widgets/text_free_books.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              BooksHorizontal(),
              SizedBox(
                height: 50,
              ),
              TextFreeBooks(),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BooksVertical(),
        ),
      ],
    );
  }
}