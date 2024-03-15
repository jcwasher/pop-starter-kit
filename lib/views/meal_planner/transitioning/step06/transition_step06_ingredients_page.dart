import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/secreting_organ.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class MealPlannerTransitionStep06IngredientsPage extends HookWidget {
  const MealPlannerTransitionStep06IngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final secretingOrgan =
        useValueListenable(mealPlannerController.secretingOrgan);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1 secreting organ of the same protein in the meal',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/beef_kidney.png',
                    height: 200,
                  ),
                  PawsOfPreyDropdownButton<SecretingOrgan>(
                    value: secretingOrgan,
                    items: SecretingOrgan.values
                        .map((secretingOrgan) =>
                            DropdownMenuItem<SecretingOrgan>(
                              value: secretingOrgan,
                              child: Text(secretingOrgan.description),
                            ))
                        .toList(),
                    onChanged: mealPlannerController.setSecretingOrgan,
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
