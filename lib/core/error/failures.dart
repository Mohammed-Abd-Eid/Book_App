import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Time Out with API Server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Time Out with API Server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Time Out with API Server");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate with API Server");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Cancel with API Server");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error with API Server");
      case DioExceptionType.unknown:
        if (dioException.message!.contains("SocketException")) {
          return ServerFailure("No Internet Connection with API Server");
        }
        return ServerFailure("unknown  with API Server");
      default:
        return ServerFailure("Opps There was an Error!!");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("Not Found");
    } else if (statusCode == 500) {
      return ServerFailure("Internet Server error");
    } else {
      return ServerFailure("Opps Error Please Try again");
    }
  }
}
