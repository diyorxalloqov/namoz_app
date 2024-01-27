import 'package:get_it/get_it.dart';
import 'package:namoz_app/core/db/shared_preferences.dart';
import 'package:namoz_app/core/singletons/dio.dart';

final serviceLocator = GetIt.I;

Future<void> setupLocator() async {
  StorageRepository.getInstance();
  serviceLocator.registerLazySingleton(DioSettings.new);
}
