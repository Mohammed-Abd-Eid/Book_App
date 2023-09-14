import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/utils/api_service.dart';
import 'package:flutter_application_1/feature/home/models/repository/home_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.asNewInstance();

void setupGetIt() {
  getIt.registerSingleton<ApiService>(
    ApiService(Dio()),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(getIt.get<ApiService>()),
  );
}
