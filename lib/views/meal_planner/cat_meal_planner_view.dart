import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CatMealPlannerView extends StatelessWidget {
  const CatMealPlannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}
