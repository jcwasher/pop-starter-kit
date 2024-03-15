import 'package:flutter/material.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/theme/text_styles.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class TransitionSummaryBasePage extends StatelessWidget {
  final String? imageSrc;
  final String? imageCaption;
  final List<InlineSpan> children;
  final bool showPickyEaterMessage;

  const TransitionSummaryBasePage({
    required this.children,
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
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyles.titleMediumBolder(context),
                children: children,
              ),
            ),
            if (showPickyEaterMessage) ...[
              Spacing.verticalSpaceLarge,
              Text(
                'See your picky eater guide if your dog isn\'t eating something in the meal',
                textScaleFactor: 0.8,
                textAlign: TextAlign.center,
              ),
            ],
          ],
        ),
      ],
    );
  }
}
