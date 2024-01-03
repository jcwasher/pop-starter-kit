import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/liver.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class LiverIngredientsCard extends HookWidget {
  final String title;

  const LiverIngredientsCard({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    final liver = useValueListenable(mealPlannerController.liver);

    return FormCard(
      children: [
        FormSection(
          title: title,
          child: Column(
            children: [
              Image.network(
                'assets/food/chicken_liver.png',
                height: 200,
              ),
              PawsOfPreyDropdownButton<Liver>(
                value: liver,
                items: Liver.values
                    .map((liver) => DropdownMenuItem<Liver>(
                          value: liver,
                          child: Text(liver.description),
                        ))
                    .toList(),
                onChanged: mealPlannerController.setLiver,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
