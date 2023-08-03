import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/muscular_organ.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class DogMealPlannerTransitionStep04IngredientsPage extends HookWidget {
  const DogMealPlannerTransitionStep04IngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final muscularOrgan =
        useValueListenable(mealPlannerController.muscularOrgan);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1 muscular organ of the same protein in the meal*',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/beef_heart.png',
                    height: 200,
                  ),
                  PawsOfPreyDropdownButton<MuscularOrgan>(
                    value: muscularOrgan,
                    items: MuscularOrgan.values
                        .map((muscularOrgan) => DropdownMenuItem<MuscularOrgan>(
                              value: muscularOrgan,
                              child: Text(muscularOrgan.description),
                            ))
                        .toList(),
                    onChanged: mealPlannerController.setMuscularOrgan,
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
