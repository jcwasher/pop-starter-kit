import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/mixins/listenable_mixin.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/theme/text_styles.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/ingredients/managanese_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/ingredients/vitamin_d_source_ingredients_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/ingredients/zinc_source_ingredients_page.dart';
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
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/summaries/manganese_source_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/summaries/vitamin_d_source_summary_page.dart';
import 'package:pop_starter_kit/views/meal_planner/dog/transitioning/summaries/zinc_source_summary_page.dart';

@RoutePage()
class MealPlannerView extends HookWidget {
  final String type;

  const MealPlannerView({@pathParam required this.type, super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentPage = useListenable(mealPlannerPageController.currentPage);
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
                  onPageChanged: (value) {
                    currentPage.value =
                        children(alreadyRawFed)[value].runtimeType;
                  },
                  children: children(alreadyRawFed),
                ),
              ),
              Spacing.verticalSpaceSmall,
              Flexible(
                child: _PageViewNavButtons(
                  onBackPressed: () => pageController.previousPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.linear,
                  ),
                  onNextPressed: () =>
                      dogMealPlannerOptionalStepDialogController.proceed(
                    context,
                    btnOkOnPress: () => pageController.nextPage(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.linear,
                    ),
                  ),
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
      if (alreadyRawFed != null && !alreadyRawFed) ...[
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
        if (!mealPlannerController.isMuscularOrganGreenTripe) ...[
          DogMealPlannerManganeseSourceIngredientsPage(),
          DogMealPlannerManganeseSourceSummaryPage(),
        ],
        if (!mealPlannerController.isAdditionalMuscleMeatRed) ...[
          DogMealPlannerZincSourceIngredientsPage(),
          DogMealPlannerZincSourceSummaryPage(),
        ],
        if (!mealPlannerController.isOmega3SourceSufficientInVitaminD) ...[
          DogMealPlannerVitaminDSourceIngredientsPage(),
          DogMealPlannerVitaminDSourceSummaryPage(),
        ],
      ],
    ];
  }
}

class _PageViewNavButtons extends HookWidget with ListenableMixin {
  final VoidCallback? onBackPressed;
  final VoidCallback? onNextPressed;

  const _PageViewNavButtons({
    this.onBackPressed,
    this.onNextPressed,
  });

  @override
  Widget build(BuildContext context) {
    listen();
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
          onPressed:
              mealPlannerPageController.canGoToPrev ? onBackPressed : null,
        ),
        TextButton(
          child: Text('NEXT >'),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              TextStyles.titleMediumBolder(context),
            ),
          ),
          onPressed:
              mealPlannerPageController.canGoToNext ? onNextPressed : null,
        ),
      ],
    );
  }

  @override
  List<ValueListenable> get listenables =>
      mealPlannerPageController.listenablesForCurrentPage;
}
