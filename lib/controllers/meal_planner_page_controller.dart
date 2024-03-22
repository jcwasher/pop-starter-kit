import 'package:flutter/foundation.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/meal_planner_liver_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/meal_planner_meaty_bone_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/meal_planner_muscle_meat_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/onboarding/about_page.dart';
import 'package:pop_starter_kit/views/meal_planner/onboarding/history_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step01/transition_step01_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step02/transition_step02_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step03/transition_step03_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step04/transition_step04_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step05/transition_step05_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step06/transition_step06_ingredients_page.dart';

class MealPlannerPageController {
  ValueNotifier<Type> currentPage = ValueNotifier(MealPlannerAboutPage);

  bool get canGoToPrev => appRouter.stack.isNotEmpty;

  bool get canGoToNext {
    print(currentPage.value);
    switch (currentPage.value) {
      case MealPlannerAboutPage:
        if (mealPlannerController.name.value == null ||
            mealPlannerController.name.value!.isEmpty) return false;
        return mealPlannerController.petWeight.value != null &&
            mealPlannerController.lifeStage.value != null;
      case MealPlannerHistoryPage:
        if (mealPlannerController.alreadyRawFed.value == null) return false;
        if (mealPlannerController.lifeStage.value == null) return false;
        if (mealPlannerController.lifeStage.value!.isPuppy &&
            mealPlannerController.monthsOld.value != null) return true;
        return mealPlannerController.lifeStage.value!.isAdult &&
            mealPlannerController.activityLevel.value != null;
      case MealPlannerTransitionStep01IngredientsPage:
        return mealPlannerController.lightMuscleMeat.value != null;
      case MealPlannerTransitionStep02IngredientsPage:
      case MealPlannerMeatyBoneIngredientsPage:
        return mealPlannerController.meatyBone.value != null;
      case MealPlannerTransitionStep04IngredientsPage:
        return mealPlannerController.muscularOrgan.value != null;
      case MealPlannerTransitionStep05IngredientsPage:
      case MealPlannerLiverIngredientsPage:
        return mealPlannerController.liver.value != null;
      case MealPlannerMuscleMeatIngredientsPage:
        return mealPlannerController.muscleMeats.value?.isNotEmpty ?? false;
      default:
        return true;
    }
  }

  List<ValueListenable> get listenablesForCurrentPage {
    switch (currentPage.value) {
      case MealPlannerAboutPage:
        return [
          mealPlannerController.name,
          mealPlannerController.petWeight,
          mealPlannerController.lifeStage
        ];
      case MealPlannerHistoryPage:
        return [
          mealPlannerController.lifeStage,
          mealPlannerController.monthsOld,
          mealPlannerController.activityLevel,
          mealPlannerController.alreadyRawFed,
        ];
      case MealPlannerTransitionStep01IngredientsPage:
        return [mealPlannerController.lightMuscleMeat];
      case MealPlannerTransitionStep02IngredientsPage:
      case MealPlannerMeatyBoneIngredientsPage:
        return [mealPlannerController.meatyBone];
      case MealPlannerTransitionStep04IngredientsPage:
        return [mealPlannerController.muscularOrgan];
      case MealPlannerTransitionStep05IngredientsPage:
      case MealPlannerLiverIngredientsPage:
        return [mealPlannerController.liver];
      case MealPlannerMuscleMeatIngredientsPage:
        return [mealPlannerController.muscleMeats];
      default:
        return [];
    }
  }

  int? get transitionStepForCurrentPage {
    switch (currentPage.value) {
      case MealPlannerTransitionStep01IngredientsPage:
        return 1;
      case MealPlannerTransitionStep02IngredientsPage:
        return 2;
      case MealPlannerTransitionStep03IngredientsPage:
        return 3;
      case MealPlannerTransitionStep04IngredientsPage:
        return 4;
      case MealPlannerTransitionStep05IngredientsPage:
        return 5;
      case MealPlannerTransitionStep06IngredientsPage:
        return 6;
      default:
        return null;
    }
  }
}
