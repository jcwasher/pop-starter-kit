import 'package:flutter/material.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/final_transition_recipe.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/transition_summary_base_page.dart';

class MealPlannerTransitionStep06SummaryPage extends StatelessWidget {
  const MealPlannerTransitionStep06SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionSummaryBasePage(
      imageSrc: '/assets/plates/6dog.png',
      imageCaption: '100% raw',
      children: [
        TextSpan(
          text:
              'Secreting organs provide micro minerals that may not be met in meals of only muscle meat and bone.',
        ),
        Spacing.verticalSpaceTextSpan,
        TextSpan(text: 'These next 3+ days you will feed your dog '),
        ...FinalTransitionRecipe.items(),
        Spacing.verticalSpaceTextSpan,
        TextSpan(
          text:
              'Secreting organs like liver may cause loose stool, so start with feeding 1/3 of the recommended amount for a day, then 1/2 the recommended amount, then the full recommended amount.',
        ),
        Spacing.verticalSpaceTextSpan,
        TextSpan(
          text:
              'Once your dog has successfully eaten the foods you chose for at least 3 days and has had firm stool, you can go onto step 7!',
        ),
      ],
    );
  }
}
