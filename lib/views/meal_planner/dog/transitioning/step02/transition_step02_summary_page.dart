import 'package:flutter/material.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';
import 'package:pop_starter_kit/widgets/red_text_span.dart';

class DogMealPlannerTransitionStep02SummaryPage extends StatelessWidget {
  const DogMealPlannerTransitionStep02SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionSummaryBasePage(
      imageSrc: '/assets/plates/2dog.png',
      imageCaption: '1/4 raw 3/4 old food',
      children: [
        TextSpan(
          text:
              'Now it\'s time for the crunchy meaty bone! These next 2+ days you will feed your dog ',
        ),
        RedTextSpan(text: '# oz (#g) of muscle meat'),
        TextSpan(text: ', '),
        RedTextSpan(text: '# oz (#g) of vegetables'),
        TextSpan(text: ', and '),
        RedTextSpan(text: '# oz (#g) of meaty bone.'),
        Spacing.verticalSpaceTextSpan,
        TextSpan(
          text:
              'Once your dog has successfully eaten the foods you\'ve chosen for at least 2 days and has had firm stool, you can go onto step 3!',
        ),
      ],
    );
  }
}
