import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/transition_summary_base_page.dart';
import 'package:pop_starter_kit/widgets/red_text_span.dart';

class MealPlannerTransitionStep01SummaryPage extends StatelessWidget {
  const MealPlannerTransitionStep01SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lightMuscleMeat = mealPlannerController.lightMuscleMeat.value;
    final vegetable = mealPlannerController.vegetable.value;
    final recipe = mealPlannerController.transitionRecipes[1]!;

    return TransitionSummaryBasePage(
      imageSrc: '/assets/plates/1dog.png',
      imageCaption: '1/8 raw 7/8 old food',
      children: [
        TextSpan(text: 'For the next 3+ days you will feed your dog '),
        RedTextSpan(
          text:
              '${recipe.lightMuscleMeatWeightString}g of ${lightMuscleMeat!.description}',
        ),
        if (vegetable != null) ...[
          TextSpan(text: ', and '),
          RedTextSpan(
            text:
                '${recipe.vegetableWeightString}g of ${vegetable.description}',
          ),
        ],
        TextSpan(text: '.'),
        Spacing.verticalSpaceTextSpan,
        TextSpan(
          text:
              'Once your dog has successfully eaten the foods in step 1 for a minimum of 3 days, and they have had firm stool, you can go onto step 2!',
        ),
      ],
    );
  }
}