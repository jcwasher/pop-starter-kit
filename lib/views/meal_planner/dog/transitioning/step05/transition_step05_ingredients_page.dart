import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/liver.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class DogMealPlannerTransitionStep05IngredientsPage extends HookWidget {
  const DogMealPlannerTransitionStep05IngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final liver = useValueListenable(mealPlannerController.liver);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1 liver of the same protein in the meal*',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/beef_heart.png',
                    height: 200,
                  ),
                  PawsOfPreyDropdownButton<Liver>(
                    value: liver,
                    items: Liver.values
                        .map((liver) => DropdownMenuItem<Liver>(
                              value: liver,
                              child: Text(liver.name),
                            ))
                        .toList(),
                    onChanged: mealPlannerController.setLiver,
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
