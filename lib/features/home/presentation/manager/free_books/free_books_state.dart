part of 'free_books_cubit.dart';

sealed class FreeBooksState extends Equatable {
  const FreeBooksState();

  @override
  List<Object> get props => [];
}

final class FreeBooksInitial extends FreeBooksState {}
final class FreeBooksLoading extends FreeBooksState {}
final class FreeBooksLoaded extends FreeBooksState {
  final List<BookModel> books;
  const FreeBooksLoaded(this.books);
}
final class FreeBooksFailure extends FreeBooksState {
  final String errMessage;
  const FreeBooksFailure(this.errMessage);
}
