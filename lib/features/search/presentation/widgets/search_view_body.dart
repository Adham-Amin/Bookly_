import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/search/presentation/widgets/books_search.dart';
import 'package:bookly/features/search/presentation/widgets/test_field_search.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),
          TextFieldSearch(),
          SizedBox(height: 24),
          Text(
            'Results',
            style: AppStyles.textSeBold18,
          ),
          SizedBox(height: 12),
          SearchBooks(),
        ],
      ),
    );
  }
}