import 'package:flutter/material.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';
import 'package:pop_starter_kit/widgets/red_text_span.dart';

class DogMealPlannerTransitionStep04SummaryPage extends StatelessWidget {
  const DogMealPlannerTransitionStep04SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionSummaryBasePage(
      imageSrc: '/assets/plates/4dog.png',
      imageCaption: '1/2 raw 1/2 old food',
      children: [
        TextSpan(
          text:
              'Time to add more variety to the diet! Muscular organs help add more essential nutrients to the diet naturally. These next 2+ days you will feed your dog ',
        ),
        RedTextSpan(text: '# oz (#g) of muscle meat'),
        TextSpan(text: ', '),
        RedTextSpan(text: '# oz (#g) of muscular organ'),
        TextSpan(text: ', '),
        RedTextSpan(text: '# oz (#g) of vegetables'),
        TextSpan(text: ', and '),
        RedTextSpan(text: '# oz (#g) of meaty bone.'),
        Spacing.verticalSpaceTextSpan,
        TextSpan(
          text:
              'Once your dog has successfully eaten the foods you\'ve chosen for at least 2 days and has had firm stool, you can go onto step 5!',
        ),
      ],
    );
  }
}
