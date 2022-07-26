// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked_core/stacked_core.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/authentication_service.dart';
import '../services/grocery_service.dart';
import '../services/image_service.dart';
import '../services/local_storage_service.dart';
import '../services/post_service.dart';
import '../services/product_service.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator(
    {String? environment, EnvironmentFilter? environmentFilter}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => SnackbarService());
  locator.registerLazySingleton(() => LocalStorageService());
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => GroceryService());
  locator.registerLazySingleton(() => ProductService());
  locator.registerLazySingleton(() => PostService());
  locator.registerLazySingleton(() => ImageService());
}
