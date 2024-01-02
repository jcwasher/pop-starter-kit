import 'package:flutter/material.dart';
import 'package:pop_starter_kit/theme/spacing.dart';

class PawsOfPreyDropdownButton<T> extends StatelessWidget {
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final void Function(T?)? onChanged;

  const PawsOfPreyDropdownButton({
    required this.items,
    this.value,
    this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outline),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: DropdownButton<T>(
        underline: Container(),
        focusColor: Colors.transparent,
        isExpanded: true,
        padding: EdgeInsets.symmetric(horizontal: Spacing.paddingSmall),
        value: value,
        items: [
          DropdownMenuItem(
            value: null,
            child: SizedBox.shrink(),
          ),
          ...items,
        ],
        onChanged: onChanged,
      ),
    );
  }
}
