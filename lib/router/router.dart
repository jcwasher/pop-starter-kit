import 'package:auto_route/auto_route.dart';
import 'package:pop_starter_kit/router/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: SignInRoute.page,
          path: '/sign-in',
        ),
      ];
}
