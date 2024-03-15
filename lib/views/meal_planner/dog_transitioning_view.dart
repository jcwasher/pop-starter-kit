import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/managanese_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/vitamin_d_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/ingredients/zinc_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/shared/meal_planner_page_view.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step01/transition_step01_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step01/transition_step01_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step02/transition_step02_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step02/transition_step02_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step03/transition_step03_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step03/transition_step03_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step04/transition_step04_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step04/transition_step04_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step05/transition_step05_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step05/transition_step05_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step06/transition_step06_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step06/transition_step06_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step07/transition_step07_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step07/transition_step07_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step08/transition_step08_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step08/transition_step08_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step09/transition_step09_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/step09/transition_step09_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/summaries/manganese_source_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/summaries/vitamin_d_source_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/summaries/zinc_source_summary_page.dart';

@RoutePage()
class DogTransitioningView extends StatelessWidget {
  const DogTransitioningView({super.key});

  @override
  Widget build(BuildContext context) {
    return MealPlannerPageView(
      children: [
        MealPlannerTransitionStep01IngredientsPage(),
        MealPlannerTransitionStep01SummaryPage(),
        MealPlannerTransitionStep02IngredientsPage(),
        MealPlannerTransitionStep02SummaryPage(),
        MealPlannerTransitionStep03IngredientsPage(),
        if (mealPlannerController.additionalMuscleMeat.value != null)
          MealPlannerTransitionStep03SummaryPage(),
        MealPlannerTransitionStep04IngredientsPage(),
        MealPlannerTransitionStep04SummaryPage(),
        MealPlannerTransitionStep05IngredientsPage(),
        MealPlannerTransitionStep05SummaryPage(),
        MealPlannerTransitionStep06IngredientsPage(),
        MealPlannerTransitionStep06SummaryPage(),
        MealPlannerTransitionStep07IngredientsPage(),
        if (mealPlannerController.omega3Source.value != null)
          MealPlannerTransitionStep07SummaryPage(),
        MealPlannerTransitionStep08IngredientsPage(),
        if (mealPlannerController.iodineSource.value != null)
          MealPlannerTransitionStep08SummaryPage(),
        MealPlannerTransitionStep09IngredientsPage(),
        if (mealPlannerController.vitaminESource.value != null)
          MealPlannerTransitionStep09SummaryPage(),
        if (!mealPlannerController.isMuscularOrganGreenTripe) ...[
          MealPlannerManganeseSourceIngredientsPage(),
          if (mealPlannerController.manganeseSource.value != null)
            MealPlannerManganeseSourceSummaryPage(),
        ],
        if (!mealPlannerController.isAdditionalMuscleMeatRed) ...[
          MealPlannerZincSourceIngredientsPage(),
          if (mealPlannerController.zincSource.value != null)
            MealPlannerZincSourceSummaryPage(),
        ],
        if (!mealPlannerController.isOmega3SourceSufficientInVitaminD) ...[
          MealPlannerVitaminDSourceIngredientsPage(),
          if (mealPlannerController.vitaminDSource.value != null)
            MealPlannerVitaminDSourceSummaryPage(),
        ],
      ],
    );
  }
}
