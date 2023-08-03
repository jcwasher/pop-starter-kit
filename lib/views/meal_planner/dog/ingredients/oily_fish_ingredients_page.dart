import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/oily_fish.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class DogMealPlannerOilyFishIngredientsPage extends HookWidget {
  const DogMealPlannerOilyFishIngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final oilyFish = useValueListenable(mealPlannerController.oilyFish);

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
                  PawsOfPreyDropdownButton<OilyFish>(
                    value: oilyFish,
                    items: OilyFish.values
                        .map((oilyFish) => DropdownMenuItem<OilyFish>(
                              value: oilyFish,
                              child: Text(oilyFish.name),
                            ))
                        .toList(),
                    onChanged: mealPlannerController.setOilyFish,
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
