import 'package:flutter/material.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';

class DogMealPlannerTransitionStep05SummaryPage extends StatelessWidget {
  const DogMealPlannerTransitionStep05SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionSummaryBasePage(
      imageSrc: '/assets/plates/5dog.png',
      imageCaption: '3/4 raw 1/4 old food',
      currentInstructions:
          'Liver provides vitamin A, copper, and many other essential nutrients to the diet. These next 3+ days you will feed your dog # oz (#g) of muscle meat, # oz (#g) of muscular organ, # oz (#g) of liver, and # oz (#g) of meaty bone. Veggies are now optional. Secreting organs like liver may cause loose stool, so start with feeding 1/3 of the recommended amount for a day, then 1/2 the recommended amount, then the full recommended amount.',
      nextStepInstructions:
          'Once your dog has successfully eaten the foods you chose for at least 3 days and has had firm stool, you can go onto step 6!',
    );
  }
}
