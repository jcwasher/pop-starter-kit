import 'package:auto_route/auto_route.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/router/router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (authController.authenticated) {
      resolver.next();
      return;
    }

    try {
      await authController.signInWithToken();
    } catch (_) {
      // we don't mind doing nothing here, thrown error is for SignInView
    }

    if (authController.authenticated) {
      resolver.next();
    } else {
      router.replace(SignInRoute());
    }
  }
}
