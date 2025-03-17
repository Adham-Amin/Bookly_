import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'free_books_state.dart';

class FreeBooksCubit extends Cubit<FreeBooksState> {
  FreeBooksCubit(this.homeRepo) : super(FreeBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFreeBooks() async {
    emit(FreeBooksLoading());
    var result = await homeRepo.fetchFreeBooks();
    result.fold(
      (failure) => emit(
        FreeBooksFailure(failure.message)
      ),
      (books) => emit(
        FreeBooksLoaded(books)
      ),
    );
  }
}
