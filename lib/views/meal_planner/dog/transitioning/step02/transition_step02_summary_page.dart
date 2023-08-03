import 'package:flutter/material.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';

class DogMealPlannerTransitionStep02SummaryPage extends StatelessWidget {
  const DogMealPlannerTransitionStep02SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionSummaryBasePage(
      imageSrc: '/assets/plates/2dog.png',
      imageCaption: '1/4 raw 3/4 old food',
      currentInstructions:
          'Now it\'s time for the crunchy meaty bone! These next 2+ days you will feed your dog # oz (#g) of muscle meat and # oz (#g) of vegetables and # oz (#g) of meaty bone.',
      nextStepInstructions:
          'Once your dog has successfully eaten the foods you\'ve chosen for at least 2 days and has had firm stool, you can go onto step 3!',
    );
  }
}
