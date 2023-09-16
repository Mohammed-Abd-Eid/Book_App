import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/error/failures.dart';
import 'package:flutter_application_1/core/utils/api_service.dart';
import 'package:flutter_application_1/feature/home/models/book_models/book_models.dart';
import 'package:flutter_application_1/feature/home/models/repository/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

//
//volumes?subject=&q=healthy
// volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programming
  @override
  Future<Either<Failure, List<BookModels>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programming");
      List<BookModels> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModels.fromJson(item));
        } catch (e) {
          books.add(BookModels.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModels>>> fetchFeaturedBooks() async {
    try {
      var data =
          await apiService.get(endPoint: "volumes?subject=&q=computer science");
      List<BookModels> books = [];
      for (var item in data['items']) {
        books.add(BookModels.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModels>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data =
          await apiService.get(endPoint: "volumes?subject=&q=computer science");
      List<BookModels> books = [];
      for (var item in data['items']) {
        books.add(BookModels.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
