// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:bookly/core/errors/failurs.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/search/data/repos/search%20repo.dart';

class SearchRepoImplementation implements SearchRepo {
  ApiService apiService;
  SearchRepoImplementation( this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetcSearchedBooks(
      {required String subjectName}) async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?q=Subject:$subjectName&Filtering=free-ebooks');
      List<BookModel> books = [];
      for (var element in data['items']) {
        books.add(BookModel.fromJson(element));
      }
      return Right(books); // Moved outside the loop
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString())); // Handle other exceptions
    }
  }
}
