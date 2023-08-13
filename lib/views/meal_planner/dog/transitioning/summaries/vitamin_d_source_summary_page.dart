import 'package:flutter/material.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';

class DogMealPlannerVitaminDSourceSummaryPage extends StatelessWidget {
  const DogMealPlannerVitaminDSourceSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionSummaryBasePage(
      currentInstructions:
          'Vitamin D is low in raw diets that don\'t include salmon, mackerel, sardines, fish eggs, or cod liver oil. If you\'re feeding pasture raised pork with fat, vitamin D will likely be met. These next 2+ days you will feed your dog # oz (#g) of the food you chose.',
      nextStepInstructions:
          'Once your dog has successfully eaten the foods you chose for at least 2 days and has had firm stool, you can go onto the next step!',
      showPickyEaterMessage: false,
    );
  }
}
