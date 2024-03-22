import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/transition_summary_base_page.dart';
import 'package:pop_starter_kit/widgets/red_text_span.dart';

class MealPlannerVitaminDSourceSummaryPage extends StatelessWidget {
  const MealPlannerVitaminDSourceSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vitaminDSource = mealPlannerController.vitaminDSource.value;

    return TransitionSummaryBasePage(
      children: [
        TextSpan(
          text:
              'Vitamin D is low in raw diets that don\'t include salmon, mackerel, sardines, fish eggs, or cod liver oil. If you\'re feeding pasture raised pork with fat, vitamin D will likely be met. These next 2+ days you will feed your dog ',
        ),
        RedTextSpan(
          text:
              '${mealPlannerController.vitaminDSourceAmount.toStringAsFixed(1)}g of ${vitaminDSource!.description}',
        ),
        TextSpan(text: '.'),
        Spacing.verticalSpaceTextSpan,
        TextSpan(
          text:
              'Once your dog has successfully eaten the foods you chose for at least 2 days and has had firm stool, you can go onto the next step!',
        ),
      ],
      showPickyEaterMessage: false,
    );
  }
}
