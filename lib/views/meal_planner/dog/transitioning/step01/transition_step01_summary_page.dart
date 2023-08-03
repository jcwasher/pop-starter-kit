import 'package:flutter/material.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';

class DogMealPlannerTransitionStep01SummaryPage extends StatelessWidget {
  const DogMealPlannerTransitionStep01SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionSummaryBasePage(
      imageSrc: '/assets/plates/1dog.png',
      imageCaption: '1/8 raw 7/8 old food',
      currentInstructions:
          'For the next 3+ days you will feed your dog # oz (#g) of muscle meat and # oz (#g) of vegetables.',
      nextStepInstructions:
          'Once your dog has successfully eaten the foods in step 1 for a minimum of 3 days, and they have had firm stool, you can go onto step 2!',
    );
  }
}
