import 'package:auto_route/auto_route.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/router/router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    await authController.signInWithToken();

    if (authController.authenticated) {
      resolver.next();
    } else {
      router.replace(SignInRoute());
    }
  }
}
