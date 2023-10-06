import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/manganese_source.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';
import 'package:pop_starter_kit/widgets/warning_card.dart';

class DogMealPlannerManganeseSourceIngredientsPage extends HookWidget {
  const DogMealPlannerManganeseSourceIngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final manganeseSource =
        useValueListenable(mealPlannerController.manganeseSource);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WarningCard(
          message:
              'From the foods you have chosen, it looks like your meal is a little low in manganese! This step is not necessary if you choose green tripe as your muscular organ.',
        ),
        Spacing.verticalSpaceTiny,
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1 manganese source',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/mussel.png',
                    height: 200,
                  ),
                  PawsOfPreyDropdownButton<ManganeseSource>(
                    value: manganeseSource,
                    items: ManganeseSource.values
                        .map((manganeseSource) =>
                            DropdownMenuItem<ManganeseSource>(
                              value: manganeseSource,
                              child: Text(manganeseSource.description),
                            ))
                        .toList(),
                    onChanged: mealPlannerController.setManganeseSource,
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
