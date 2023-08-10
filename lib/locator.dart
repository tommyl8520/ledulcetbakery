import 'package:get_it/get_it.dart';
import 'package:ledulcetbakery/screens/components/dish_list.dart';

import 'models/card_list_model.dart';
import 'models/card_model.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerFactory(() => FoodList());
  locator.registerLazySingleton(() => CardListModelView());
  locator.registerLazySingleton(() => CardModel());
}
