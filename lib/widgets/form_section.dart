import 'package:flutter/material.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/theme/text_styles.dart';

class FormSection extends StatelessWidget {
  final String title;
  final Widget child;

  const FormSection({required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyles.titleMediumBolder(context),
        ),
        Spacing.verticalSpaceTiny,
        child,
      ],
    );
  }
}
