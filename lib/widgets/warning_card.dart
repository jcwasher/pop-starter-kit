import 'package:flutter/material.dart';
import 'package:pop_starter_kit/theme/spacing.dart';

class WarningCard extends StatelessWidget {
  final String message;

  const WarningCard({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Icon(
          Icons.warning,
          color: Colors.red,
          size: 50,
        ),
        Card(
          color: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Spacing.paddingMedium),
          ),
          child: Padding(
            padding: EdgeInsets.all(Spacing.paddingMedium),
            child: Center(
              child: Text(
                message,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
