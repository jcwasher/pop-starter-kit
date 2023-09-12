import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/vitamin_d_source.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class DogMealPlannerVitaminDSourceIngredientsPage extends HookWidget {
  const DogMealPlannerVitaminDSourceIngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vitaminDSource =
        useValueListenable(mealPlannerController.vitaminDSource);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1 vitamin D source',
              child: Column(
                children: [
                  Placeholder(fallbackHeight: 200),
                  PawsOfPreyDropdownButton<VitaminDSource>(
                    value: vitaminDSource,
                    items: VitaminDSource.values
                        .map((vitaminDSource) =>
                            DropdownMenuItem<VitaminDSource>(
                              value: vitaminDSource,
                              child: Text(vitaminDSource.description),
                            ))
                        .toList(),
                    onChanged: mealPlannerController.setVitaminDSource,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
