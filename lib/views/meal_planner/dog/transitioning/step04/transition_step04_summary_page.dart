import 'package:flutter/material.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';

class DogMealPlannerTransitionStep04SummaryPage extends StatelessWidget {
  const DogMealPlannerTransitionStep04SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionSummaryBasePage(
      imageSrc: '/assets/plates/4dog.png',
      imageCaption: '1/2 raw 1/2 old food',
      currentInstructions:
          'Time to add more variety to the diet! Muscular organs help add more essential nutrients to the diet naturally. These next 2+ days you will feed your dog # oz (#g) of muscle meat, # oz (#g) of muscular organ, # oz (#g) of vegetables and # oz (#g) of meaty bone.',
      nextStepInstructions:
          'Once your dog has successfully eaten the foods you chose for at least 2 days and has had firm stool, you can go onto step 5!',
    );
  }
}
