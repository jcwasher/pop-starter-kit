import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/zinc_source.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class DogMealPlannerZincSourceIngredientsPage extends HookWidget {
  const DogMealPlannerZincSourceIngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final zincSource = useValueListenable(mealPlannerController.zincSource);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1 zinc source',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/oyster.png',
                    height: 200,
                  ),
                  PawsOfPreyDropdownButton<ZincSource>(
                    value: zincSource,
                    items: ZincSource.values
                        .map((zincSource) => DropdownMenuItem<ZincSource>(
                              value: zincSource,
                              child: Text(zincSource.name),
                            ))
                        .toList(),
                    onChanged: mealPlannerController.setZincSource,
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
