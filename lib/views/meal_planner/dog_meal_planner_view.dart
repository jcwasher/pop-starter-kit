import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pop_starter_kit/router/observers/dog_meal_planner_observer.dart';

@RoutePage()
class DogMealPlannerView extends StatelessWidget {
  const DogMealPlannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter(
      navigatorObservers: () => [DogMealPlannerObserver()],
    );
  }
}
