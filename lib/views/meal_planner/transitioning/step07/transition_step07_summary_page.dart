import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/transition_summary_base_page.dart';
import 'package:pop_starter_kit/widgets/red_text_span.dart';

class MealPlannerTransitionStep07SummaryPage extends StatelessWidget {
  const MealPlannerTransitionStep07SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final omega3Source = mealPlannerController.omega3Source.value;

    return TransitionSummaryBasePage(
      children: [
        TextSpan(
          text:
              'Oily fish provides omega-3s like EPA and DHA, Salmon, mackerel, sardines, herring, and unseasoned fish roe also provide vitamin D. These next 2+ days you will feed your dog ',
        ),
        RedTextSpan(
          text:
              '${mealPlannerController.omega3SourceAmount.toStringAsFixed(1)}g of ${omega3Source!.description}',
        ),
        TextSpan(text: '.'),
        Spacing.verticalSpaceTextSpan,
        TextSpan(
          text:
              'Once your dog has successfully eaten the foods you chose for at least 2 days and has had firm stool, you can go onto step 8!',
        ),
      ],
    );
  }
}
