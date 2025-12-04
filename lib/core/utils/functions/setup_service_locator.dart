import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../features/home/data/data_sources/home_local_data_source.dart';
import '../../../features/home/data/data_sources/home_remote_data_source.dart';
import '../../../features/home/data/repos/home_repo_implementaion.dart';
import '../api_service.dart';

final locator = GetIt.instance;

void setupServiceLocator() {
  locator.registerSingleton<ApiService>(ApiService(Dio()));

  locator.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeRemoteDataSource: HomeRemoteDataSourceImp(locator.get<ApiService>()),
      homeLocalDataSource: HomeLocalDataSourceImpl(),
    ),
  );
}
