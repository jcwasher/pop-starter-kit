import 'package:flutter/material.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';
import 'package:pop_starter_kit/widgets/red_text_span.dart';

class DogMealPlannerTransitionStep09SummaryPage extends StatelessWidget {
  const DogMealPlannerTransitionStep09SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionSummaryBasePage(
      children: [
        TextSpan(
          text:
              'Vitamin E is low in raw diets unless whole prey animals are fed. Nuts and seeds are high in vitamin E, but they are also high in fat and calories. Naturally derived vitamin E oil is a simple way of adding it in. These next 2+ days you will feed your dog ',
        ),
        RedTextSpan(
          // we should be able to be more specific here
          text: '# drops/pills of vitamin E.',
        ),
        Spacing.verticalSpaceTextSpan,
        TextSpan(
          text:
              'Once your dog has successfully eaten the foods you chose for at least 2 days and has had firm stool, you can go onto the next step!',
        ),
      ],
      showPickyEaterMessage: false,
    );
  }
}
