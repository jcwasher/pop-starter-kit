import 'package:flutter/material.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';

class DogMealPlannerTransitionStep06SummaryPage extends StatelessWidget {
  const DogMealPlannerTransitionStep06SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionSummaryBasePage(
      imageSrc: '/assets/plates/6dog.png',
      imageCaption: '100% raw',
      currentInstructions:
          'Liver provides vitamin A, copper, and many other essential nutrients to the diet. These next 3+ days you will feed your dog # oz (#g) of muscle meat, # oz (#g) of muscular organ, # oz (#g) of liver, # oz (#g) of other secreting organ, and # oz (#g) of meaty bone.\n\nSecreting organs like liver may cause loose stool, so start with feeding 1/3 of the recommended amount for a day, then 1/2 the recommended amount, then the full recommended amount.',
      nextStepInstructions:
          'Once your dog has successfully eaten the foods you chose for at least 3 days and has had firm stool, you can go onto step 7!',
    );
  }
}
