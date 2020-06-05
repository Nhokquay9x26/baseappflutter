import 'package:base/src/api/api_service.dart';
import 'package:base/src/utils/SharePrefs.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => SharePrefs());
}
