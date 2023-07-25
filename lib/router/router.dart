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
              page: MealPlannerRoute.page,
              path: 'meal-planner/:type',
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
