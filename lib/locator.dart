import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';

var locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
