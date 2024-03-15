import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/views/meal_planner/onboarding/about_page.dart';
import 'package:pop_starter_kit/views/meal_planner/onboarding/history_page.dart';
import 'package:pop_starter_kit/views/meal_planner/shared/meal_planner_page_view.dart';

@RoutePage()
class DogOnboardingView extends HookWidget {
  const DogOnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final alreadyRawFed =
        useValueListenable(mealPlannerController.alreadyRawFed);

    return MealPlannerPageView(
      onEnd: () => context.router.pushNamed(
        (alreadyRawFed ?? false) ? 'non-transitioning' : 'transitioning',
      ),
      children: [
        MealPlannerAboutPage(),
        MealPlannerHistoryPage(),
      ],
    );
  }
}
