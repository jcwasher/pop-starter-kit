import 'package:flutter/material.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/transition_summary_base_page.dart';
import 'package:pop_starter_kit/widgets/red_text_span.dart';

class DogMealPlannerTransitionStep05SummaryPage extends StatelessWidget {
  const DogMealPlannerTransitionStep05SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionSummaryBasePage(
      imageSrc: '/assets/plates/5dog.png',
      imageCaption: '3/4 raw 1/4 old food',
      children: [
        TextSpan(
          text:
              'Liver provides vitamin A, copper, and many other essential nutrients to the diet. These next 3+ days you will feed your dog ',
        ),
        RedTextSpan(text: '# oz (#g) of muscle meat'),
        TextSpan(text: ', '),
        RedTextSpan(text: '# oz (#g) of muscular organ'),
        TextSpan(text: ', '),
        RedTextSpan(text: '# oz (#g) of liver'),
        TextSpan(text: ', and '),
        RedTextSpan(text: '# oz (#g) of meaty bone.'),
        Spacing.verticalSpaceTextSpan,
        TextSpan(
          text:
              'Veggies are now optional. Secreting organs like liver may cause loose stool, so start with feeding 1/3 of the recommended amount for a day, then 1/2 the recommended amount, then the full recommended amount.',
        ),
        Spacing.verticalSpaceTextSpan,
        TextSpan(
          text:
              'Once your dog has successfully eaten the foods you chose for at least 3 days and has had firm stool, you can go onto step 6!',
        ),
      ],
    );
  }
}
