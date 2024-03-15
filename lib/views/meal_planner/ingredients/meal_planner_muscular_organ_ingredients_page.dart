import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/muscular_organ.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';
import 'package:pop_starter_kit/widgets/multi_select_dropdown_button.dart';

class MealPlannerMuscularOrganIngredientsPage extends StatelessWidget {
  const MealPlannerMuscularOrganIngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1-3 muscular organs',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/beef_heart.png',
                    height: 200,
                  ),
                  PawsOfPreyMultiSelectDropdownButton<MuscularOrgan>(
                    maxItems: 3,
                    onOptionSelected: (List<ValueItem> selectedOptions) {
                      mealPlannerController.muscularOrgans.value =
                          selectedOptions
                              .map((option) => option.value as MuscularOrgan)
                              .toList();
                    },
                    options: MuscularOrgan.values
                        .map((muscularOrgan) => ValueItem(
                              label: muscularOrgan.description,
                              value: muscularOrgan,
                            ))
                        .toList(),
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
