import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/router/router.gr.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/meal_planner_muscle_meat_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/onboarding/history_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step01/transition_step01_ingredients_page.dart';

class DogMealPlannerObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    if (route.settings.name == DogTransitioningRoute.name) {
      _setCurrentPage(MealPlannerTransitionStep01IngredientsPage);
    } else if (route.settings.name == DogNonTransitioningRoute.name) {
      _setCurrentPage(MealPlannerMuscleMeatIngredientsPage);
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    final routeName = route.settings.name;
    final isRouteMealPlanner = routeName == DogTransitioningRoute.name ||
        routeName == DogNonTransitioningRoute.name;

    if (previousRoute != null && isRouteMealPlanner) {
      _setCurrentPage(MealPlannerHistoryPage);
    }
  }
}

void _setCurrentPage(Type page) {
  mealPlannerPageController.currentPage.value = page;
}
