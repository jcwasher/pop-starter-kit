import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';
import 'package:pop_starter_kit/widgets/red_text_span.dart';

class DogMealPlannerZincSourceSummaryPage extends StatelessWidget {
  const DogMealPlannerZincSourceSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final zincSource = mealPlannerController.zincSource.value;

    return TransitionSummaryBasePage(
      children: [
        TextSpan(
          text:
              'Zinc is low in raw diets if you\'re only feeding poultry or rabbit. If you\'re feeding grass fed and finished beef, then zinc will most likely be met. These next 2+ days you will feed your dog ',
        ),
        RedTextSpan(
          text: '# oz (#g) of ${zincSource!.description}',
        ),
        TextSpan(text: '.'),
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
