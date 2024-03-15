import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/mixins/listenable_mixin.dart';
import 'package:pop_starter_kit/router/router.gr.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/theme/text_styles.dart';

class MealPlannerPageView extends HookWidget {
  final List<Widget> children;
  final VoidCallback? onEnd;

  const MealPlannerPageView({
    required this.children,
    this.onEnd,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentPage = useListenable(mealPlannerPageController.currentPage);

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
                  physics: NeverScrollableScrollPhysics(),
                  controller: pageController,
                  onPageChanged: (value) {
                    currentPage.value = children[value].runtimeType;
                  },
                  children: children,
                ),
              ),
              Spacing.verticalSpaceSmall,
              Flexible(
                child: _PageViewNavButtons(
                  onBackPressed: currentPage.value == children.first.runtimeType
                      ? () async {
                          final didPop = await context.router.pop();
                          if (!didPop) context.router.replace(HomeRoute());
                        }
                      : () {
                          pageController.previousPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.linear,
                          );
                        },
                  onNextPressed: () {
                    mealPlannerOptionalStepDialogController.proceed(
                      context,
                      btnOkOnPress: onEnd != null &&
                              currentPage.value == children.last.runtimeType
                          ? onEnd
                          : () {
                              mealPlannerController.createTransitionRecipe();
                              pageController.nextPage(
                                duration: Duration(milliseconds: 200),
                                curve: Curves.linear,
                              );
                            },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
