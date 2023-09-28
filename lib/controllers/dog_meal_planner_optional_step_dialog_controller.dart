import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/ingredients/vitamin_d_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/ingredients/zinc_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step03/transition_step03_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step06/transition_step06_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step07/transition_step07_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step08/transition_step08_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step09/transition_step09_ingredients_page.dart';

class DogMealPlannerOptionalStepDialogController {
  void proceed(BuildContext context, {VoidCallback? btnOkOnPress}) {
    if (!_shouldWarnForCurrentPage) {
      btnOkOnPress?.call();
      return;
    }

    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      headerAnimationLoop: false,
      useRootNavigator: true,
      width: Spacing.comfyWidth,
      desc: _warningForCurrentPage,
      btnCancel: OutlinedButton(
        child: Text('close'),
        onPressed: () => context.router.pop(),
      ),
      btnOk: OutlinedButton(
        child: Text('proceed'),
        onPressed: () {
          btnOkOnPress?.call();
          context.router.pop();
        },
      ),
    )..show();
  }

  bool get _shouldWarnForCurrentPage {
    switch (mealPlannerPageController.currentPage.value) {
      case DogMealPlannerTransitionStep03IngredientsPage:
        return mealPlannerController.additionalMuscleMeat.value == null;
      case DogMealPlannerTransitionStep06IngredientsPage:
        return mealPlannerController.secretingOrgan.value == null;
      case DogMealPlannerTransitionStep07IngredientsPage:
        return mealPlannerController.omega3Source.value == null;
      case DogMealPlannerTransitionStep08IngredientsPage:
        return mealPlannerController.iodineSource.value == null;
      case DogMealPlannerTransitionStep09IngredientsPage:
        return mealPlannerController.vitaminESource.value == null;
      case DogMealPlannerZincSourceIngredientsPage:
        return mealPlannerController.zincSource.value == null;
      case DogMealPlannerVitaminDSourceIngredientsPage:
        return mealPlannerController.vitaminDSource.value == null;
      default:
        return false;
    }
  }

  String? get _warningForCurrentPage {
    switch (mealPlannerPageController.currentPage.value) {
      case DogMealPlannerTransitionStep03IngredientsPage:
        return 'A raw meal without muscle meat variety may be low in certain minerals.';
      case DogMealPlannerTransitionStep06IngredientsPage:
        return 'A raw meal without secreting organs may be too low in B vitamins, iron, and zinc.';
      case DogMealPlannerTransitionStep07IngredientsPage:
        return 'A raw meal without oily fish may be too low in omega-3\'s and vitamin D.';
      case DogMealPlannerTransitionStep08IngredientsPage:
        return 'Your raw meal will be low in iodine.';
      case DogMealPlannerTransitionStep09IngredientsPage:
        return 'Your raw meal will be low in vitamin E.';
      case DogMealPlannerZincSourceIngredientsPage:
        return 'Your raw meal will be low in zinc.';
      case DogMealPlannerVitaminDSourceIngredientsPage:
        return 'Your raw meal will be low in vitamin D';
      default:
        return null;
    }
  }
}
