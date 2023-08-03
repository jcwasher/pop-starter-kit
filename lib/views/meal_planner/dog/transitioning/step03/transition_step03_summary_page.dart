import 'package:flutter/material.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';

class DogMealPlannerTransitionStep03SummaryPage extends StatelessWidget {
  const DogMealPlannerTransitionStep03SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionSummaryBasePage(
      imageSrc: '/assets/plates/3dog.png',
      imageCaption: '1/2 raw 1/2 old food',
      currentInstructions:
          'Time to add more variety to the diet! I recommend a red meat protein as this will be higher in zinc, iron, and B vitamins. These next 2+ days you will feed your dog # oz (#g) of muscle meat, # oz (#g) of vegetables, and # oz (#g) of meaty bone.',
      nextStepInstructions:
          'Once your dog has successfully eaten the foods you\'ve chosen for at least 2 days and has had firm stool, you can go onto step 4!',
    );
  }
}
