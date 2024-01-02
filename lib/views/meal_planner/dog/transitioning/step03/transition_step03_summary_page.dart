import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';
import 'package:pop_starter_kit/widgets/red_text_span.dart';

class DogMealPlannerTransitionStep03SummaryPage extends StatelessWidget {
  const DogMealPlannerTransitionStep03SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lightMuscleMeat = mealPlannerController.lightMuscleMeat.value;
    final vegetable = mealPlannerController.vegetable.value;
    final meatyBone = mealPlannerController.meatyBone.value;
    final additionalMuscleMeat =
        mealPlannerController.additionalMuscleMeat.value;
    final recipe = mealPlannerController.transitionRecipes[3]!;

    return TransitionSummaryBasePage(
      imageSrc: '/assets/plates/3dog.png',
      imageCaption: '1/2 raw 1/2 old food',
      children: [
        TextSpan(
          text:
              'Time to add more variety to the diet! I recommend a red meat protein as this will be higher in zinc, iron, and B vitamins. These next 2+ days you will feed your dog ',
        ),
        RedTextSpan(
          text:
              '${recipe.lightMuscleMeatWeightString}g of ${lightMuscleMeat!.description}',
        ),
        if (additionalMuscleMeat == null) ...[
          TextSpan(text: ','),
          if (vegetable != null) TextSpan(text: ' '),
        ],
        if (additionalMuscleMeat != null) ...[
          TextSpan(text: ', '),
          RedTextSpan(
            text:
                '${recipe.additionalMuscleMeatWeightString}g ${additionalMuscleMeat.description}',
          ),
          TextSpan(text: ','),
          if (vegetable != null) TextSpan(text: ' '),
        ],
        if (vegetable != null) ...[
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
              'Once your dog has successfully eaten the foods you\'ve chosen for at least 2 days and has had firm stool, you can go onto step 4!',
        ),
      ],
    );
  }
}
