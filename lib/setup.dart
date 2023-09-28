import 'package:get_it/get_it.dart';
import 'package:pop_starter_kit/controllers/auth_controller.dart';
import 'package:pop_starter_kit/controllers/meal_planner_controller.dart';
import 'package:pop_starter_kit/controllers/dog_meal_planner_optional_step_dialog_controller.dart';
import 'package:pop_starter_kit/controllers/meal_planner_page_controller.dart';
import 'package:pop_starter_kit/router/router.dart';
import 'package:pop_starter_kit/services/order_service.dart';
import 'package:pop_starter_kit/services/persistence_service.dart';
import 'package:pop_starter_kit/services/token_service.dart';

void setUp() {
  GetIt.instance.registerLazySingleton(() => AppRouter());
  GetIt.instance.registerLazySingleton(() => AuthController());
  GetIt.instance.registerLazySingleton(() => MealPlannerController());
  GetIt.instance.registerLazySingleton(() => MealPlannerPageController());
  GetIt.instance.registerLazySingleton(
    () => DogMealPlannerOptionalStepDialogController(),
  );
  GetIt.instance.registerLazySingleton(() => OrderService());
  GetIt.instance.registerLazySingleton(() => PersistenceService());
  GetIt.instance.registerLazySingleton(() => TokenService());
}

void reset() {
  GetIt.instance.resetLazySingleton<AuthController>();
}
