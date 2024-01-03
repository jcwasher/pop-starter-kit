import 'package:flutter/material.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/shared/liver_ingredients_card.dart';

class DogMealPlannerTransitionStep05IngredientsPage extends StatelessWidget {
  const DogMealPlannerTransitionStep05IngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LiverIngredientsCard(
          title: 'Choose 1 liver of the same protein in the meal*',
        ),
      ],
    );
  }
}
