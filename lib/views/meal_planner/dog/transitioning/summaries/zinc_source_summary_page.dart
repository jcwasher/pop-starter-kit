import 'package:flutter/material.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';

class DogMealPlannerZincSourceSummaryPage extends StatelessWidget {
  const DogMealPlannerZincSourceSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionSummaryBasePage(
      currentInstructions:
          'Zinc is low in raw diets if you\'re only feeding poultry or rabbit. If you\'re feeding grass fed and finished beef, then zinc will most likely be met. These next 2+ days you will feed your dog # oz (#g) of the food you chose.',
      nextStepInstructions:
          'Once your dog has successfully eaten the foods you chose for at least 2 days and has had firm stool, you can go onto the next step!',
      showPickyEaterMessage: false,
    );
  }
}
