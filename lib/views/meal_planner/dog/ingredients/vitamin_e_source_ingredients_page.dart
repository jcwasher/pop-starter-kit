import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/vitamin_e_source.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class DogMealPlannerVitaminESourceIngredientsPage extends HookWidget {
  const DogMealPlannerVitaminESourceIngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vitaminESource =
        useValueListenable(mealPlannerController.vitaminESource);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1 vitamin E source',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/vitamin_e.png',
                    height: 200,
                  ),
                  PawsOfPreyDropdownButton<VitaminESource>(
                    value: vitaminESource,
                    items: VitaminESource.values
                        .map((vitaminESource) =>
                            DropdownMenuItem<VitaminESource>(
                              value: vitaminESource,
                              child: Text(vitaminESource.name),
                            ))
                        .toList(),
                    onChanged: mealPlannerController.setVitaminESource,
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
