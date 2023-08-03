import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/meaty_bone.dart';
import 'package:pop_starter_kit/widgets/dropdown_button.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class DogMealPlannerTransitionStep02IngredientsPage extends HookWidget {
  const DogMealPlannerTransitionStep02IngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final meatyBone = useValueListenable(mealPlannerController.meatyBone);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1 meaty bone of the same protein in step 1*',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/chicken_neck_bone.png',
                    height: 200,
                  ),
                  PawsOfPreyDropdownButton<MeatyBone>(
                    value: meatyBone,
                    items: MeatyBone.values
                        .map((meatyBone) => DropdownMenuItem<MeatyBone>(
                              value: meatyBone,
                              child: Text(meatyBone.description),
                            ))
                        .toList(),
                    onChanged: mealPlannerController.setMeatyBone,
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
