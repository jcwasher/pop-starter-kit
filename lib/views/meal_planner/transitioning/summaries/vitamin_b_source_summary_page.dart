import 'package:flutter/material.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/views/meal_planner/transitioning/transition_summary_base_page.dart';
import 'package:pop_starter_kit/widgets/red_text_span.dart';

class CatMealPlannerVitaminBSourceSummaryPage extends StatelessWidget {
  const CatMealPlannerVitaminBSourceSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionSummaryBasePage(
      children: [
        TextSpan(
          text:
              'B vitamins are low in raw diets that don\'t include red meats, kidney, or heart. These next 2+ days you will feed your dog ',
        ),
        RedTextSpan(
          // we should be able to be more specific here
          text: '# oz (#g) of the food you chose.',
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
