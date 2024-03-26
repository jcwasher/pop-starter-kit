import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/additional_muscle_meat.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class MealPlannerTransitionStep03IngredientsPage extends HookWidget {
  const MealPlannerTransitionStep03IngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final additionalMuscleMeat =
        useValueListenable(mealPlannerController.additionalMuscleMeat);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1 additional muscle meat',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/pork_meat.png',
                    height: 200,
                  ),
                  PawsOfPreyDropdownButton<MuscleMeat>(
                    value: additionalMuscleMeat,
                    items: MuscleMeat.values
                        .map((additionalMuscleMeat) =>
                            DropdownMenuItem<MuscleMeat>(
                              value: additionalMuscleMeat,
                              child: Text(additionalMuscleMeat.description),
                            ))
                        .toList(),
                    onChanged: mealPlannerController.setAdditionalMuscleMeat,
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