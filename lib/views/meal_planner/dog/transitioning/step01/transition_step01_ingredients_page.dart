import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/gut_soother.dart';
import 'package:pop_starter_kit/enums/light_muscle_meat.dart';
import 'package:pop_starter_kit/enums/vegetable.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class DogMealPlannerTransitionStep01IngredientsPage extends HookWidget {
  const DogMealPlannerTransitionStep01IngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lightMuscleMeat =
        useValueListenable(mealPlannerController.lightMuscleMeat);
    final vegetable = useValueListenable(mealPlannerController.vegetable);
    final gutSoother = useValueListenable(mealPlannerController.gutSoother);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1 light muscle meat*',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/chicken_meat.png',
                    height: 100,
                  ),
                  PawsOfPreyDropdownButton<LightMuscleMeat>(
                    value: lightMuscleMeat,
                    items: LightMuscleMeat.values
                        .map((lightMuscleMeat) =>
                            DropdownMenuItem<LightMuscleMeat>(
                              value: lightMuscleMeat,
                              child: Text(lightMuscleMeat.description),
                            ))
                        .toList(),
                    onChanged: mealPlannerController.setLightMuscleMeat,
                  ),
                ],
              ),
            ),
          ],
        ),
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1 vegetable',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/spinach.png',
                    height: 100,
                  ),
                  PawsOfPreyDropdownButton<Vegetable>(
                    value: vegetable,
                    items: Vegetable.values
                        .map((vegetable) => DropdownMenuItem<Vegetable>(
                              value: vegetable,
                              child: Text(vegetable.description),
                            ))
                        .toList(),
                    onChanged: mealPlannerController.setVegetable,
                  ),
                ],
              ),
            ),
          ],
        ),
        FormCard(
          children: [
            FormSection(
              title:
                  'Choose 1 item that will help soothe the gut during the transition',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/bone_broth.png',
                    height: 100,
                  ),
                  PawsOfPreyDropdownButton<GutSoother>(
                    value: gutSoother,
                    items: GutSoother.values
                        .map((gutSoother) => DropdownMenuItem<GutSoother>(
                              value: gutSoother,
                              child: Text(gutSoother.description),
                            ))
                        .toList(),
                    onChanged: mealPlannerController.setGutSoother,
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
