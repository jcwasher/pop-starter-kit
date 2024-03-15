import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/vitamin_d_source.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';
import 'package:pop_starter_kit/widgets/warning_card.dart';

class MealPlannerVitaminDSourceIngredientsPage extends HookWidget {
  const MealPlannerVitaminDSourceIngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vitaminDSource =
        useValueListenable(mealPlannerController.vitaminDSource);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WarningCard(
          message:
              'From the foods you have chosen, it looks like your meal is a little low in vitamin D! This step is not necessary if you choose salmon, mackerel, sardines, or fish roe.',
        ),
        Spacing.verticalSpaceTiny,
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
