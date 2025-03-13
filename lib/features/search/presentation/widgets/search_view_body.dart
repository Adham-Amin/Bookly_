import 'package:bookly/core/utils/app_color.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/search/presentation/widgets/books_search.dart';
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

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColor.burntSienna,
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: Icon(Icons.search),
        focusedBorder: outlineBorder(),
        enabledBorder: outlineBorder(color: AppColor.grey),
      ),
    );
  }

  OutlineInputBorder outlineBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide(
        color: color ?? AppColor.burntSienna,
      ),
    );
  }
}
