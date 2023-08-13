import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/manganese_source.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

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
                              child: Text(manganeseSource.name),
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
