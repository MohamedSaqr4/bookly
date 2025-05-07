import 'package:dartz/dartz.dart';
import 'package:bookly/core/errors/failurs.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/HomeRepo.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation implements HomeRepo {
  ApiService apiService;
  HomeRepoImplementation(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetcFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?q=Subject:programming&Filtering=free-ebooks');
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

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?q=Computer Science &Filtering=free-ebooks&Sorting=newest');
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
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchSimillarBooks({required String category})async {
     try {
      var data = await apiService.get(
          endPoint: 'volumes?q=Computer Science &Filtering=free-ebooks&Sorting=newest&Sorting=relevance');
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
