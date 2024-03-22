import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';

@RoutePage()
class RecipeView extends StatelessWidget {
  const RecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(
          columns: [
            DataColumn(label: Text('INGREDIENT')),
            DataColumn(label: Text('AMOUNT')),
          ],
          rows: mealPlannerController.recipeItems
              .map((item) => DataRow(cells: [
                    DataCell(Text(item.food.description)),
                    DataCell(Text(item.amount.toStringAsFixed(1))),
                  ]))
              .toList(),
        ),
      ),
    );
  }
}
