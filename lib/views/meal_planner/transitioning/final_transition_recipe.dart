import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/widgets/red_text_span.dart';

abstract class FinalTransitionRecipe {
  static List<TextSpan> items({bool hasAdditional = false}) {
    final lightMuscleMeat = mealPlannerController.lightMuscleMeat.value;
    final muscularOrgan = mealPlannerController.muscularOrgan.value;
    final liver = mealPlannerController.liver.value;
    final secretingOrgan = mealPlannerController.secretingOrgan.value;
    final meatyBone = mealPlannerController.meatyBone.value;
    final additionalMuscleMeat =
        mealPlannerController.additionalMuscleMeat.value;
    final recipe = mealPlannerController.transitionRecipes[6]!;

    // TODO: consider alternative approach using RecipeItems
    return [
      RedTextSpan(
        text:
            '${recipe.lightMuscleMeatWeightString}g of ${lightMuscleMeat!.description}',
      ),
      if (additionalMuscleMeat != null) ...[
        TextSpan(text: ', '),
        RedTextSpan(
          text:
              '${recipe.additionalMuscleMeatWeightString}g ${additionalMuscleMeat.description}',
        ),
      ],
      TextSpan(text: ', '),
      RedTextSpan(
        text:
            '${recipe.muscularOrganWeightString}g of ${muscularOrgan!.description}',
      ),
      TextSpan(text: ', '),
      RedTextSpan(
        text: '${recipe.liverWeightString}g of ${liver!.description}',
      ),
      TextSpan(text: ', '),
      if (secretingOrgan != null) ...[
        RedTextSpan(
          text:
              '${recipe.secretingOrganWeightString}g of ${secretingOrgan.description}',
        ),
        TextSpan(text: ', '),
      ],
      if (!hasAdditional) TextSpan(text: 'and '),
      RedTextSpan(
        text:
            '${recipe.meatyBoneWeightString}g of ${meatyBone!.description}${hasAdditional ? '' : '.'}',
      ),
      if (hasAdditional) TextSpan(text: ', and '),
    ];
  }
}
