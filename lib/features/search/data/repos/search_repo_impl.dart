import 'package:bookly/core/error/failure.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/services/api_service.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> searchBooks(
      {required String bookName}) async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint: '/volumes?Filtering=free-ebooks&q=subject:$bookName');
      List<BookModel> books = [];

      for (var book in data["items"] ?? []) {
        try {
          books.add(BookModel.fromJson(book));
        } catch (e) {
          books.add(BookModel.fromJson(book));
        }
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
