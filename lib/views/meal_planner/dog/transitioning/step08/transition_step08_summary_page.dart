import 'package:flutter/material.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';

class DogMealPlannerTransitionStep08SummaryPage extends StatelessWidget {
  const DogMealPlannerTransitionStep08SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionSummaryBasePage(
      currentInstructions:
          'Kelp and dulse provides iodine to the diet, which is lacking if you not feeding thyroid glands of an animal. These next 2+ days you will feed your dog # oz (#g) of the food you chose.',
      nextStepInstructions:
          'Once your dog has successfully eaten the foods you chose for at least 2 days and has had firm stool, you can go onto step 9!',
      showPickyEaterMessage: false,
    );
  }
}
