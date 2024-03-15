import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/omega3_source.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class MealPlannerOmega3SourceIngredientsPage extends HookWidget {
  const MealPlannerOmega3SourceIngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final omega3Source = useValueListenable(mealPlannerController.omega3Source);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1 oily fish or marine oil',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/salmon.png',
                    height: 200,
                  ),
                  PawsOfPreyDropdownButton<Omega3Source>(
                    value: omega3Source,
                    items: Omega3Source.values
                        .map((omega3Source) => DropdownMenuItem<Omega3Source>(
                              value: omega3Source,
                              child: Text(omega3Source.description),
                            ))
                        .toList(),
                    onChanged: mealPlannerController.setOmega3Source,
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
