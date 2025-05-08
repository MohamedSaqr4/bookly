import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/repos/HomeRepoImplimintation.dart';
import 'package:bookly/features/search/data/repos/searchRepo%20Implimintaiton.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(getIt<ApiService>()),
  );

 getIt.registerSingleton<SearchRepoImplementation>(
    SearchRepoImplementation(getIt<ApiService>()),
  );
 
}
