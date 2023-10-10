import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';
import 'package:pop_starter_kit/widgets/red_text_span.dart';

class DogMealPlannerTransitionStep08SummaryPage extends StatelessWidget {
  const DogMealPlannerTransitionStep08SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final iodineSource = mealPlannerController.iodineSource.value;

    return TransitionSummaryBasePage(
      children: [
        TextSpan(
          text:
              'Kelp and dulse provides iodine to the diet, which is lacking if you not feeding thyroid glands of an animal. These next 2+ days you will feed your dog ',
        ),
        RedTextSpan(
          text: '# oz (#g) of ${iodineSource!.description}',
        ),
        Spacing.verticalSpaceTextSpan,
        TextSpan(
          text:
              'Once your dog has successfully eaten the foods you chose for at least 2 days and has had firm stool, you can go onto step 9!',
        ),
      ],
      showPickyEaterMessage: false,
    );
  }
}
