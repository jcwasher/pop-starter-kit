import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/widgets/form_card.dart';
import 'package:pop_starter_kit/widgets/form_section.dart';

class CatMealPlannerVitaminBSourceIngredientsPage extends HookWidget {
  const CatMealPlannerVitaminBSourceIngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: for cats only
    // final vitaminBSource =
    //     useValueListenable(mealPlannerController.vitaminBSource);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormCard(
          children: [
            FormSection(
              title: 'Choose 1 vitamin B source',
              child: Column(
                children: [
                  Image.network(
                    'assets/food/nutritional_yeast.png',
                    height: 200,
                  ),
                  // PawsOfPreyDropdownButton<VitaminBSource>(
                  //   value: vitaminBSource,
                  //   items: VitaminBSource.values
                  //       .map((vitaminBSource) =>
                  //           DropdownMenuItem<VitaminBSource>(
                  //             value: vitaminBSource,
                  //             child: Text(vitaminBSource.description),
                  //           ))
                  //       .toList(),
                  //   onChanged: mealPlannerController.setVitaminBSource,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
