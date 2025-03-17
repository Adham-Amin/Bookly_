import 'package:bookly/core/utils/services_locator.dart';
import 'package:bookly/features/search/data/repos/search_repo_impl.dart';
import 'package:bookly/features/search/presentation/manager/search_books/search_books_cubit.dart';
import 'package:bookly/features/search/presentation/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(Icons.close),
        ),
        title: Text('Search'),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => SearchBooksCubit(getIt.get<SearchRepoImpl>()),
        child: SearchViewBody(),
      ),
    );
  }
}
