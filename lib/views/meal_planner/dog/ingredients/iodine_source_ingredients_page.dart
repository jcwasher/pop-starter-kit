import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/iodine_source.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class DogMealPlannerIodineSourceIngredientsPage extends HookWidget {
  const DogMealPlannerIodineSourceIngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final iodineSource = useValueListenable(mealPlannerController.iodineSource);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1 iodine source',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/kelp.png',
                    height: 200,
                  ),
                  PawsOfPreyDropdownButton<IodineSource>(
                    value: iodineSource,
                    items: IodineSource.values
                        .map((iodineSource) => DropdownMenuItem<IodineSource>(
                              value: iodineSource,
                              child: Text(iodineSource.description),
                            ))
                        .toList(),
                    onChanged: mealPlannerController.setIodineSource,
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
