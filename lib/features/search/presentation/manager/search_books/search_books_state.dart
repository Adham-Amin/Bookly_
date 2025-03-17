part of 'search_books_cubit.dart';

sealed class SearchBooksState extends Equatable {
  const SearchBooksState();

  @override
  List<Object> get props => [];
}

final class SearchBooksInitial extends SearchBooksState {}
final class SearchBooksLoading extends SearchBooksState {}
final class SearchBooksLoaded extends SearchBooksState {
  
  final List<BookModel> books;
  const SearchBooksLoaded({required this.books});

}
final class SearchBooksFailure extends SearchBooksState {
 
  final String errMessage;
  const SearchBooksFailure({required this.errMessage});

}
