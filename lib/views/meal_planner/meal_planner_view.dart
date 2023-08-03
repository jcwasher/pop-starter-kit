import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/theme/text_styles.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/onboarding/about_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/onboarding/history_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step01/transition_step01_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step01/transition_step01_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step02/transition_step02_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step02/transition_step02_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step03/transition_step03_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step03/transition_step03_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step04/transition_step04_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step04/transition_step04_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step05/transition_step05_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step05/transition_step05_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step06/transition_step06_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step06/transition_step06_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step07/transition_step07_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step07/transition_step07_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step08/transition_step08_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step08/transition_step08_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step09/transition_step09_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/step09/transition_step09_summary_page.dart';

@RoutePage()
class MealPlannerView extends HookWidget {
  final String type;

  const MealPlannerView({@pathParam required this.type, super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final index = useListenable(mealPlannerController.index);
    final alreadyRawFed =
        useValueListenable(mealPlannerController.alreadyRawFed);

    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(Spacing.paddingSmall),
          width: Spacing.formWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 3,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (value) => index.value = value,
                  children: children(alreadyRawFed),
                ),
              ),
              Spacing.verticalSpaceSmall,
              Flexible(
                child: _PageViewNavButtons(
                  listenables: mealPlannerController.listenablesForCurrentPage,
                  onBackPressed: () =>
                      pageController.jumpToPage(index.value - 1),
                  onNextPressed: () =>
                      pageController.jumpToPage(index.value + 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> children(bool? alreadyRawFed) {
    return [
      DogMealPlannerAboutPage(),
      DogMealPlannerHistoryPage(),
      // if (alreadyRawFed != null && !alreadyRawFed) ...[
      DogMealPlannerTransitionStep01IngredientsPage(),
      DogMealPlannerTransitionStep01SummaryPage(),
      DogMealPlannerTransitionStep02IngredientsPage(),
      DogMealPlannerTransitionStep02SummaryPage(),
      DogMealPlannerTransitionStep03IngredientsPage(),
      DogMealPlannerTransitionStep03SummaryPage(),
      DogMealPlannerTransitionStep04IngredientsPage(),
      DogMealPlannerTransitionStep04SummaryPage(),
      DogMealPlannerTransitionStep05IngredientsPage(),
      DogMealPlannerTransitionStep05SummaryPage(),
      DogMealPlannerTransitionStep06IngredientsPage(),
      DogMealPlannerTransitionStep06SummaryPage(),
      DogMealPlannerTransitionStep07IngredientsPage(),
      DogMealPlannerTransitionStep07SummaryPage(),
      DogMealPlannerTransitionStep08IngredientsPage(),
      DogMealPlannerTransitionStep08SummaryPage(),
      DogMealPlannerTransitionStep09IngredientsPage(),
      DogMealPlannerTransitionStep09SummaryPage(),
      // ],
    ];
  }
}

class _PageViewNavButtons extends HookWidget {
  final List<ValueListenable> listenables;
  final VoidCallback? onBackPressed;
  final VoidCallback? onNextPressed;

  const _PageViewNavButtons({
    required this.listenables,
    this.onBackPressed,
    this.onNextPressed,
  });

  @override
  Widget build(BuildContext context) {
    listenables.forEach((listenable) => useListenable(listenable));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          child: Text('< BACK'),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              TextStyles.titleMediumBolder(context),
            ),
          ),
          onPressed: mealPlannerController.canGoToPrev ? onBackPressed : null,
        ),
        TextButton(
          child: Text('NEXT >'),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              TextStyles.titleMediumBolder(context),
            ),
          ),
          onPressed: mealPlannerController.canGoToNext ? onNextPressed : null,
        ),
      ],
    );
  }
}
