import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failures.dart';
import 'package:flutter_application_1/feature/home/models/book_models/book_models.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModels>>> fetchBestSellerBooks();

  Future<Either<Failure, List<BookModels>>> fetchFeaturedBooks();
}