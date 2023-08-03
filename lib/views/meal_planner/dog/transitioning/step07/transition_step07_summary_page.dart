import 'package:flutter/material.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';

class DogMealPlannerTransitionStep07SummaryPage extends StatelessWidget {
  const DogMealPlannerTransitionStep07SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionSummaryBasePage(
      currentInstructions:
          'Oily fish provides omega-3s like EPA and DHA, Salmon, mackerel, sardines, herring, and unseasoned fish roe also provide vitamin D. These next 2+ days you will feed your dog # oz (#g) of the food you chose.',
      nextStepInstructions:
          'Once your dog has successfully eaten the foods you chose for at least 2 days and has had firm stool, you can go onto step 8!',
    );
  }
}
