import 'package:get_it/get_it.dart';
import 'package:pop_starter_kit/controllers/meal_planner_controller.dart';
import 'package:pop_starter_kit/router/router.dart';
import 'package:pop_starter_kit/controllers/auth_controller.dart';
import 'package:pop_starter_kit/services/order_service.dart';
import 'package:pop_starter_kit/services/persistence_service.dart';
import 'package:pop_starter_kit/services/token_service.dart';

AppRouter get appRouter => GetIt.instance<AppRouter>();
AuthController get authController => GetIt.instance<AuthController>();
MealPlannerController get mealPlannerController =>
    GetIt.instance<MealPlannerController>();
OrderService get orderService => GetIt.instance<OrderService>();
PersistenceService get persistenceService =>
    GetIt.instance<PersistenceService>();
TokenService get tokenService => GetIt.instance<TokenService>();
