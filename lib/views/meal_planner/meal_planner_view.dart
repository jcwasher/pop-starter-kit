import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/theme/text_styles.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/about_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/history_page.dart';

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
              Expanded(
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
      if (alreadyRawFed != null && alreadyRawFed) ...[
        Container(color: Colors.red),
      ],
      if (alreadyRawFed != null && !alreadyRawFed) ...[
        Container(color: Colors.blue),
      ],
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
