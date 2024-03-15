import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/zinc_source.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';
import 'package:pop_starter_kit/widgets/warning_card.dart';

class MealPlannerZincSourceIngredientsPage extends HookWidget {
  const MealPlannerZincSourceIngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final zincSource = useValueListenable(mealPlannerController.zincSource);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WarningCard(
          message:
              'From the foods you have chosen, it looks like your meal is a little low in zinc!',
        ),
        Spacing.verticalSpaceTiny,
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
                              child: Text(zincSource.description),
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
