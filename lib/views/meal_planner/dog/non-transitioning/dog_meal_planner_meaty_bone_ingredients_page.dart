import 'package:flutter/material.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/shared/meaty_bone_ingredients_card.dart';

class DogMealPlannerMeatyBoneIngredientsPage extends StatelessWidget {
  const DogMealPlannerMeatyBoneIngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MeatyBoneIngredientsCard(
          title: 'Choose 1 meaty bone or bone replacement*',
        ),
      ],
    );
  }
}
