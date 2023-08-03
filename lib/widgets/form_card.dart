import 'package:flutter/material.dart';
import 'package:pop_starter_kit/theme/spacing.dart';

class FormCard extends StatelessWidget {
  final List<Widget> children;

  const FormCard({
    required this.children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Spacing.paddingLarge * 1.5,
          vertical: Spacing.paddingLarge,
        ),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: children,
          ),
        ),
      ),
    );
  }
}
