import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/transition_summary_base_page.dart';
import 'package:pop_starter_kit/widgets/red_text_span.dart';

class MealPlannerTransitionStep02SummaryPage extends StatelessWidget {
  const MealPlannerTransitionStep02SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lightMuscleMeat = mealPlannerController.lightMuscleMeat.value;
    final vegetable = mealPlannerController.vegetable.value;
    final meatyBone = mealPlannerController.meatyBone.value;
    final recipe = mealPlannerController.transitionRecipes[2]!;

    return TransitionSummaryBasePage(
      imageSrc: '/assets/plates/2dog.png',
      imageCaption: '1/4 raw 3/4 old food',
      children: [
        TextSpan(
          text:
              'Now it\'s time for the crunchy meaty bone! These next 2+ days you will feed your dog ',
        ),
        RedTextSpan(
          text:
              '${recipe.lightMuscleMeatWeightString}g of ${lightMuscleMeat!.description}',
        ),
        if (vegetable != null) ...[
          TextSpan(text: ', '),
          RedTextSpan(
            text:
                '${recipe.vegetableWeightString}g of ${vegetable.description},',
          ),
        ],
        TextSpan(text: ' and '),
        RedTextSpan(
          text: '${recipe.meatyBoneWeightString}g of ${meatyBone!.description}',
        ),
        TextSpan(text: '.'),
        Spacing.verticalSpaceTextSpan,
        TextSpan(
          text:
              'Once your dog has successfully eaten the foods you\'ve chosen for at least 2 days and has had firm stool, you can go onto step 3!',
        ),
      ],
    );
  }
}
