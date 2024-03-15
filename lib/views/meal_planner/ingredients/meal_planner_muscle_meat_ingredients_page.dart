import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/additional_muscle_meat.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';
import 'package:pop_starter_kit/widgets/multi_select_dropdown_button.dart';

class MealPlannerMuscleMeatIngredientsPage extends StatelessWidget {
  const MealPlannerMuscleMeatIngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1-5 muscle meat proteins*',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/pork_meat.png',
                    height: 200,
                  ),
                  PawsOfPreyMultiSelectDropdownButton<MuscleMeat>(
                    maxItems: 5,
                    onOptionSelected: (List<ValueItem> selectedOptions) {
                      mealPlannerController.muscleMeats.value = selectedOptions
                          .map((option) => option.value as MuscleMeat)
                          .toList();
                    },
                    options: MuscleMeat.values
                        .map((muscleMeat) => ValueItem(
                              label: muscleMeat.description,
                              value: muscleMeat,
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
