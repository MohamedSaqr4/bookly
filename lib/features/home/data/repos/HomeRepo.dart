import 'package:bookly/core/errors/failurs.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetcFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimillarBooks(
      {required String category});
      
}
