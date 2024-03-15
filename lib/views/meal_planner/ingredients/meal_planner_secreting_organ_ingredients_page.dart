import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/secreting_organ.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';
import 'package:pop_starter_kit/widgets/multi_select_dropdown_button.dart';

class MealPlannerSecretingOrganIngredientsPage extends StatelessWidget {
  const MealPlannerSecretingOrganIngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1-2 secreting organs',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/beef_kidney.png',
                    height: 200,
                  ),
                  PawsOfPreyMultiSelectDropdownButton<SecretingOrgan>(
                    maxItems: 2,
                    onOptionSelected: (List<ValueItem> selectedOptions) {
                      mealPlannerController.secretingOrgans.value =
                          selectedOptions
                              .map((option) => option.value as SecretingOrgan)
                              .toList();
                    },
                    options: SecretingOrgan.values
                        .map((secretingOrgan) => ValueItem(
                              label: secretingOrgan.description,
                              value: secretingOrgan,
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
