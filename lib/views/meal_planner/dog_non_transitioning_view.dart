import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/iodine_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/managanese_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/meal_planner_liver_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/meal_planner_meaty_bone_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/meal_planner_muscle_meat_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/meal_planner_muscular_organ_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/meal_planner_secreting_organ_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/omega3_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/vitamin_d_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/vitamin_e_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/zinc_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/shared/meal_planner_page_view.dart';

@RoutePage()
class DogNonTransitioningView extends StatelessWidget {
  const DogNonTransitioningView({super.key});

  @override
  Widget build(BuildContext context) {
    return MealPlannerPageView(
      children: [
        MealPlannerMuscleMeatIngredientsPage(),
        MealPlannerMeatyBoneIngredientsPage(),
        MealPlannerMuscularOrganIngredientsPage(),
        MealPlannerLiverIngredientsPage(),
        MealPlannerSecretingOrganIngredientsPage(),
        MealPlannerOmega3SourceIngredientsPage(),
        MealPlannerIodineSourceIngredientsPage(),
        MealPlannerVitaminESourceIngredientsPage(),
        if (!mealPlannerController.isMuscularOrganGreenTripe)
          MealPlannerManganeseSourceIngredientsPage(),
        if (!mealPlannerController.isAdditionalMuscleMeatRed)
          MealPlannerZincSourceIngredientsPage(),
        if (!mealPlannerController.isOmega3SourceSufficientInVitaminD)
          MealPlannerVitaminDSourceIngredientsPage(),
      ],
    );
  }
}
