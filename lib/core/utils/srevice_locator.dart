import 'package:bookly/Features/Home/repos/home_repo_implement.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<HomeRepoImplement>(
    HomeRepoImplement(
      ApiService(
        Dio(),
      ),
    ),
  );
}
