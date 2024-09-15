import 'package:booly_app/Features/home/data/repo/home_repo_implementaion.dart';
import 'package:booly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImplementaion>(
    HomeRepoImplementaion(
      apiService: getIt.get<ApiService>(),
    ),
  );
}
