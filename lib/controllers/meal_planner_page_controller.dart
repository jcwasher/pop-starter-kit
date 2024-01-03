import 'package:flutter/foundation.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/non-transitioning/dog_meal_planner_liver_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/non-transitioning/dog_meal_planner_meaty_bone_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/non-transitioning/dog_meal_planner_muscle_meat_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/onboarding/about_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/onboarding/history_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step01/transition_step01_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step02/transition_step02_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step03/transition_step03_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step04/transition_step04_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step05/transition_step05_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step06/transition_step06_ingredients_page.dart';

class MealPlannerPageController {
  ValueNotifier<Type> currentPage = ValueNotifier(DogMealPlannerAboutPage);

  bool get canGoToPrev => currentPage.value != DogMealPlannerAboutPage;

  bool get canGoToNext {
    switch (currentPage.value) {
      case DogMealPlannerAboutPage:
        if (mealPlannerController.name.value == null ||
            mealPlannerController.name.value!.isEmpty) return false;
        return mealPlannerController.petWeight.value != null &&
            mealPlannerController.lifeStage.value != null;
      case DogMealPlannerHistoryPage:
        if (mealPlannerController.lifeStage.value == null) return false;
        if (mealPlannerController.lifeStage.value!.isPuppy &&
            mealPlannerController.monthsOld.value != null) return true;
        return mealPlannerController.lifeStage.value!.isAdult &&
            mealPlannerController.activityLevel.value != null;
      case DogMealPlannerTransitionStep01IngredientsPage:
        return mealPlannerController.lightMuscleMeat.value != null;
      case DogMealPlannerTransitionStep02IngredientsPage:
      case DogMealPlannerMeatyBoneIngredientsPage:
        return mealPlannerController.meatyBone.value != null;
      case DogMealPlannerTransitionStep04IngredientsPage:
        return mealPlannerController.muscularOrgan.value != null;
      case DogMealPlannerTransitionStep05IngredientsPage:
      case DogMealPlannerLiverIngredientsPage:
        return mealPlannerController.liver.value != null;
      case DogMealPlannerMuscleMeatIngredientsPage:
        return mealPlannerController.muscleMeats.value?.isNotEmpty ?? false;
      default:
        return true;
    }
  }

  List<ValueListenable> get listenablesForCurrentPage {
    switch (currentPage.value) {
      case DogMealPlannerAboutPage:
        return [
          mealPlannerController.name,
          mealPlannerController.petWeight,
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
      case DogMealPlannerMeatyBoneIngredientsPage:
        return [mealPlannerController.meatyBone];
      case DogMealPlannerTransitionStep04IngredientsPage:
        return [mealPlannerController.muscularOrgan];
      case DogMealPlannerTransitionStep05IngredientsPage:
      case DogMealPlannerLiverIngredientsPage:
        return [mealPlannerController.liver];
      case DogMealPlannerMuscleMeatIngredientsPage:
        return [mealPlannerController.muscleMeats];
      default:
        return [];
    }
  }

  int? get transitionStepForCurrentPage {
    switch (currentPage.value) {
      case DogMealPlannerTransitionStep01IngredientsPage:
        return 1;
      case DogMealPlannerTransitionStep02IngredientsPage:
        return 2;
      case DogMealPlannerTransitionStep03IngredientsPage:
        return 3;
      case DogMealPlannerTransitionStep04IngredientsPage:
        return 4;
      case DogMealPlannerTransitionStep05IngredientsPage:
        return 5;
      case DogMealPlannerTransitionStep06IngredientsPage:
        return 6;
      default:
        return null;
    }
  }
}
