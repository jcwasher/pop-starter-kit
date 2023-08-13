import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/vitamin_b_source.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class DogMealPlannerVitaminBSourceIngredientsPage extends HookWidget {
  const DogMealPlannerVitaminBSourceIngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vitaminBSource =
        useValueListenable(mealPlannerController.vitaminBSource);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1 vitamin B source',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/nutritional_yeast.png',
                    height: 200,
                  ),
                  PawsOfPreyDropdownButton<VitaminBSource>(
                    value: vitaminBSource,
                    items: VitaminBSource.values
                        .map((vitaminBSource) =>
                            DropdownMenuItem<VitaminBSource>(
                              value: vitaminBSource,
                              child: Text(vitaminBSource.name),
                            ))
                        .toList(),
                    onChanged: mealPlannerController.setVitaminBSource,
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
