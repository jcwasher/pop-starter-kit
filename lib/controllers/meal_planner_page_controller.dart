import 'package:flutter/foundation.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/onboarding/about_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/onboarding/history_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step01/transition_step01_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step02/transition_step02_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step04/transition_step04_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step05/transition_step05_ingredients_page.dart';

class MealPlannerPageController {
  ValueNotifier<Type> currentPage = ValueNotifier(DogMealPlannerAboutPage);

  bool get canGoToPrev => currentPage.value != DogMealPlannerAboutPage;

  bool get canGoToNext {
    switch (currentPage.value) {
      case DogMealPlannerAboutPage:
        if (mealPlannerController.name.value == null ||
            mealPlannerController.name.value!.isEmpty) return false;
        return mealPlannerController.weight.value != null &&
            mealPlannerController.lifeStage.value != null;
      case DogMealPlannerHistoryPage:
        if (mealPlannerController.lifeStage.value == null) return false;
        if (mealPlannerController.alreadyRawFed.value != false) return false;
        if (mealPlannerController.lifeStage.value!.isPuppy &&
            mealPlannerController.monthsOld.value != null) return true;
        return mealPlannerController.lifeStage.value!.isAdult &&
            mealPlannerController.activityLevel.value != null;
      case DogMealPlannerTransitionStep01IngredientsPage:
        return mealPlannerController.lightMuscleMeat.value != null;
      case DogMealPlannerTransitionStep02IngredientsPage:
        return mealPlannerController.meatyBone.value != null;
      case DogMealPlannerTransitionStep04IngredientsPage:
        return mealPlannerController.muscularOrgan.value != null;
      case DogMealPlannerTransitionStep05IngredientsPage:
        return mealPlannerController.liver.value != null;
      default:
        return true;
    }
  }

  List<ValueListenable> get listenablesForCurrentPage {
    switch (currentPage.value) {
      case DogMealPlannerAboutPage:
        return [
          mealPlannerController.name,
          mealPlannerController.weight,
          mealPlannerController.lifeStage
        ];
      case DogMealPlannerHistoryPage:
        return [
          mealPlannerController.lifeStage,
          mealPlannerController.monthsOld,
          mealPlannerController.activityLevel,
          mealPlannerController.alreadyRawFed,
        ];
      case DogMealPlannerTransitionStep01IngredientsPage:
        return [mealPlannerController.lightMuscleMeat];
      case DogMealPlannerTransitionStep02IngredientsPage:
        return [mealPlannerController.meatyBone];
      case DogMealPlannerTransitionStep04IngredientsPage:
        return [mealPlannerController.muscularOrgan];
      case DogMealPlannerTransitionStep05IngredientsPage:
        return [mealPlannerController.liver];
      default:
        return [];
    }
  }
}
