import 'package:flutter/material.dart';
import 'package:pop_starter_kit/views/meal_planner/shared/liver_ingredients_card.dart';

class MealPlannerLiverIngredientsPage extends StatelessWidget {
  const MealPlannerLiverIngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LiverIngredientsCard(title: 'Choose 1 liver*'),
      ],
    );
  }
}
