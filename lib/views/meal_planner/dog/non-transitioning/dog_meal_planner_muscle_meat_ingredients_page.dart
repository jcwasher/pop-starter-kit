import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/additional_muscle_meat.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class DogMealPlannerMuscleMeatIngredientsPage extends StatelessWidget {
  const DogMealPlannerMuscleMeatIngredientsPage({super.key});

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
                  MultiSelectDropDown<MuscleMeat>(
                    fieldBackgroundColor: Colors.transparent,
                    selectedOptionBackgroundColor:
                        Theme.of(context).canvasColor,
                    optionsBackgroundColor: Theme.of(context).canvasColor,
                    hint: '',
                    onOptionSelected: (List<ValueItem> selectedOptions) {
                      mealPlannerController.muscleMeats.value =
                          List<MuscleMeat>.from(
                        selectedOptions.map((option) => option.value),
                      );
                    },
                    options: MuscleMeat.values
                        .map((muscleMeat) => ValueItem(
                              label: muscleMeat.description,
                              value: muscleMeat,
                            ))
                        .toList(),
                    selectionType: SelectionType.multi,
                    dropdownHeight: 300,
                    maxItems: 5,
                    optionTextStyle: Theme.of(context).textTheme.titleMedium,
                    inputDecoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
                    selectedOptionIcon: Icon(
                      Icons.check,
                      color: Theme.of(context).textTheme.titleMedium!.color,
                    ),
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
