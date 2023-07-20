import 'package:pop_starter_kit/controllers/base_controller.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/models/controller_state/controller_state.dart';
import 'package:pop_starter_kit/router/router.gr.dart';

class AuthController extends BaseController {
  bool authenticated = false;

  Future<void> signInWithCredentials({
    required String username,
    required String password,
  }) async {
    try {
      state.value = ControllerState.loading('Signing in...');
      final isValidCredentials = await tokenService.fetch(
        username: username,
        password: password,
      );

      state.value = ControllerState.loading('Validating order...');
      final isValidOrder = await orderService.validate();

      authenticated = isValidCredentials && isValidOrder;
      if (authenticated) {
        await appRouter.replace(HomeRoute());
        ControllerState.idle();
      }
    } catch (error) {
      state.value = ControllerState.error('$error');
    }
  }

  Future<void> signInWithToken() async {
    final isValidToken = await tokenService.validate();
    authenticated = isValidToken && await orderService.validate();
    if (authenticated) await tokenService.refresh();
  }

  Future<void> signOut() async {
    authenticated = false;
    await persistenceService.remove('authToken');
    await persistenceService.remove('email');
    appRouter.replace(SignInRoute());
  }
}
