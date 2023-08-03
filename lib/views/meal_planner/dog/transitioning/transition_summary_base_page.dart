import 'package:flutter/material.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/theme/text_styles.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class TransitionSummaryBasePage extends StatelessWidget {
  final String? imageSrc;
  final String? imageCaption;
  final String currentInstructions;
  final String nextStepInstructions;
  final bool showPickyEaterMessage;

  const TransitionSummaryBasePage({
    required this.currentInstructions,
    required this.nextStepInstructions,
    this.imageSrc,
    this.imageCaption,
    this.showPickyEaterMessage = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (imageSrc != null && imageCaption != null)
          FormCard(
            children: [
              FormSection(
                title: 'Here\'s what your dog\'s meal should look like:',
                child: Column(
                  children: [
                    Image.network(imageSrc!, height: 175),
                    Text(imageCaption!),
                  ],
                ),
              ),
            ],
          ),
        FormCard(
          children: [
            Text(
              currentInstructions,
              style: TextStyles.titleMediumBolder(context),
            ),
            Spacing.verticalSpaceLarge,
            Text(
              nextStepInstructions,
              style: TextStyles.titleMediumBolder(context),
            ),
            if (showPickyEaterMessage) ...[
              Spacing.verticalSpaceLarge,
              Text(
                'See your picky eater guide if your dog isn\'t eating something in the meal',
              ),
            ],
          ],
        ),
      ],
    );
  }
}
