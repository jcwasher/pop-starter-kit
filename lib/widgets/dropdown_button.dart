import 'package:flutter/material.dart';
import 'package:pop_starter_kit/theme/spacing.dart';

class PawsOfPreyDropdownButton<T> extends StatelessWidget {
  final T? value;
  final List<DropdownMenuItem<T>>? items;
  final void Function(T?)? onChanged;

  const PawsOfPreyDropdownButton({
    super.key,
    this.value,
    this.items,
    this.onChanged,
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
        items: items,
        onChanged: onChanged,
      ),
    );
  }
}
