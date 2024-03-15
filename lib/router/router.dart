import 'package:auto_route/auto_route.dart';
import 'package:pop_starter_kit/router/guards/auth_guard.dart';
import 'package:pop_starter_kit/router/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeNavigator.page,
          guards: [AuthGuard()],
          initial: true,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              initial: true,
            ),
            AutoRoute(
              page: DogMealPlannerRoute.page,
              path: 'meal-planner/dogs',
              children: [
                AutoRoute(
                  page: DogOnboardingRoute.page,
                  path: 'onboarding',
                  initial: true,
                ),
                AutoRoute(
                  page: DogTransitioningRoute.page,
                  path: 'transitioning',
                ),
                AutoRoute(
                  page: DogNonTransitioningRoute.page,
                  path: 'non-transitioning',
                ),
              ],
            ),
            AutoRoute(
              page: CatMealPlannerRoute.page,
              path: 'meal-planner/cats',
              children: [
                AutoRoute(
                  page: CatOnboardingRoute.page,
                  path: 'onboarding',
                  initial: true,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          page: SignInRoute.page,
          path: '/sign-in',
          fullscreenDialog: true,
        ),
      ];
}
