import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class PawsOfPreyMultiSelectDropdownButton<T> extends StatelessWidget {
  final Function(List<ValueItem<T>>)? onOptionSelected;
  final List<ValueItem<T>> options;
  final int maxItems;

  const PawsOfPreyMultiSelectDropdownButton({
    required this.onOptionSelected,
    required this.options,
    this.maxItems = 5,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiSelectDropDown<T>(
      fieldBackgroundColor: Colors.transparent,
      selectedOptionBackgroundColor: Theme.of(context).canvasColor,
      optionsBackgroundColor: Theme.of(context).canvasColor,
      hint: '',
      onOptionSelected: onOptionSelected,
      options: options,
      selectionType: SelectionType.multi,
      dropdownHeight: 300,
      maxItems: maxItems,
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
    );
  }
}
