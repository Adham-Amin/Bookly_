import 'package:bookly/core/utils/app_color.dart';
import 'package:bookly/features/search/presentation/manager/search_books/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (bookName) {
        BlocProvider.of<SearchBooksCubit>(context).searchBooks(bookName: bookName);
      },
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