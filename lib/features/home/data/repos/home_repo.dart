import 'package:bookly/core/error/failure.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchFreeBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilerBooks({required String category});
}