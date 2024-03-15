import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/transition_summary_base_page.dart';
import 'package:pop_starter_kit/widgets/red_text_span.dart';

class MealPlannerTransitionStep04SummaryPage extends StatelessWidget {
  const MealPlannerTransitionStep04SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lightMuscleMeat = mealPlannerController.lightMuscleMeat.value;
    final muscularOrgan = mealPlannerController.muscularOrgan.value;
    final vegetable = mealPlannerController.vegetable.value;
    final meatyBone = mealPlannerController.meatyBone.value;
    final additionalMuscleMeat =
        mealPlannerController.additionalMuscleMeat.value;
    final recipe = mealPlannerController.transitionRecipes[4]!;

    return TransitionSummaryBasePage(
      imageSrc: '/assets/plates/4dog.png',
      imageCaption: '1/2 raw 1/2 old food',
      children: [
        TextSpan(
          text:
              'Time to add more variety to the diet! Muscular organs help add more essential nutrients to the diet naturally. These next 2+ days you will feed your dog ',
        ),
        RedTextSpan(
          text:
              '${recipe.lightMuscleMeatWeightString}g of ${lightMuscleMeat!.description}',
        ),
        if (additionalMuscleMeat != null) ...[
          TextSpan(text: ', '),
          RedTextSpan(
            text:
                '${recipe.additionalMuscleMeatWeightString}g ${additionalMuscleMeat.description}',
          ),
        ],
        TextSpan(text: ', '),
        RedTextSpan(
          text:
              '${recipe.muscularOrganWeightString}g of ${muscularOrgan!.description}',
        ),
        if (vegetable != null) ...[
          TextSpan(text: ', '),
          RedTextSpan(
            text:
                '${recipe.vegetableWeightString}g of ${vegetable.description}',
          ),
          TextSpan(text: ','),
        ],
        TextSpan(text: ' and '),
        RedTextSpan(
          text: '${recipe.meatyBoneWeightString}g of ${meatyBone!.description}',
        ),
        TextSpan(text: '.'),
        Spacing.verticalSpaceTextSpan,
        TextSpan(
          text:
              'Once your dog has successfully eaten the foods you\'ve chosen for at least 2 days and has had firm stool, you can go onto step 5!',
        ),
      ],
    );
  }
}
