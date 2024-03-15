import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/meal_planner_muscular_organ_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/meal_planner_secreting_organ_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/iodine_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/omega3_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/vitamin_d_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/vitamin_e_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/zinc_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step03/transition_step03_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step06/transition_step06_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step07/transition_step07_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step08/transition_step08_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step09/transition_step09_ingredients_page.dart';

class MealPlannerOptionalStepDialogController {
  void proceed(BuildContext context, {VoidCallback? btnOkOnPress}) {
    if (!_shouldWarnForCurrentPage) {
      btnOkOnPress?.call();
      return;
    }

    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      headerAnimationLoop: false,
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
      case MealPlannerTransitionStep03IngredientsPage:
        return mealPlannerController.additionalMuscleMeat.value == null;
      case MealPlannerTransitionStep06IngredientsPage:
        return mealPlannerController.secretingOrgan.value == null;
      case MealPlannerTransitionStep07IngredientsPage:
      case MealPlannerOmega3SourceIngredientsPage:
        return mealPlannerController.omega3Source.value == null;
      case MealPlannerTransitionStep08IngredientsPage:
      case MealPlannerIodineSourceIngredientsPage:
        return mealPlannerController.iodineSource.value == null;
      case MealPlannerTransitionStep09IngredientsPage:
      case MealPlannerVitaminESourceIngredientsPage:
        return mealPlannerController.vitaminESource.value == null;
      case MealPlannerZincSourceIngredientsPage:
        return mealPlannerController.zincSource.value == null;
      case MealPlannerVitaminDSourceIngredientsPage:
        return mealPlannerController.vitaminDSource.value == null;
      case MealPlannerMuscularOrganIngredientsPage:
        return mealPlannerController.muscularOrgans.value == null;
      case MealPlannerSecretingOrganIngredientsPage:
        return mealPlannerController.secretingOrgans.value == null;
      default:
        return false;
    }
  }

  String? get _warningForCurrentPage {
    switch (mealPlannerPageController.currentPage.value) {
      case MealPlannerTransitionStep03IngredientsPage:
        return 'A raw meal without muscle meat variety may be low in certain minerals.';
      case MealPlannerTransitionStep06IngredientsPage:
      case MealPlannerSecretingOrganIngredientsPage:
        return 'A raw meal without secreting organs may be too low in B vitamins, iron, and zinc.';
      case MealPlannerTransitionStep07IngredientsPage:
      case MealPlannerOmega3SourceIngredientsPage:
        return 'A raw meal without oily fish may be too low in omega-3\'s and vitamin D.';
      case MealPlannerTransitionStep08IngredientsPage:
      case MealPlannerIodineSourceIngredientsPage:
        return 'Your raw meal will be low in iodine.';
      case MealPlannerTransitionStep09IngredientsPage:
      case MealPlannerVitaminESourceIngredientsPage:
        return 'Your raw meal will be low in vitamin E.';
      case MealPlannerZincSourceIngredientsPage:
        return 'Your raw meal will be low in zinc.';
      case MealPlannerVitaminDSourceIngredientsPage:
        return 'Your raw meal will be low in vitamin D';
      case MealPlannerMuscularOrganIngredientsPage:
        return 'A raw meal without muscular organs may be too low in B vitamins, iron, and zinc.';
      default:
        return null;
    }
  }
}
