import 'package:flutter/material.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/shared/meaty_bone_ingredients_card.dart';

class DogMealPlannerTransitionStep02IngredientsPage extends StatelessWidget {
  const DogMealPlannerTransitionStep02IngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MeatyBoneIngredientsCard(
          title: 'Choose 1 meaty bone of the same protein in step 1*',
        ),
      ],
    );
  }
}
