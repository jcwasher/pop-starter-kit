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
      state.value = ControllerState.loading();

      authenticated = await tokenService.fetch(
        username: username,
        password: password,
      );

      if (authenticated) {
        await appRouter.replace(HomeRoute());
        state.value = ControllerState.idle();
      }
    } catch (error) {
      state.value = ControllerState.error('$error');
    }
  }

  Future<void> signInWithToken() async {
    authenticated = await tokenService.validate();
  }
}
