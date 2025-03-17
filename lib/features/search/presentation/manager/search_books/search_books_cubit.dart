import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this._searchRepo) : super(SearchBooksInitial());
  final SearchRepo _searchRepo;

  Future<void> searchBooks({required String bookName}) async {
    emit(SearchBooksLoading());
    var result = await _searchRepo.searchBooks(bookName: bookName);
    result.fold(
      (failure) => emit(
        SearchBooksFailure(errMessage: failure.message),
      ),
      (books) => emit(
        SearchBooksLoaded(books: books),
      ),
    );
  }
}
