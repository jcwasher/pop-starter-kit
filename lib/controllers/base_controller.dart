import 'package:flutter/foundation.dart';
import 'package:pop_starter_kit/models/controller_state/controller_state.dart';

abstract class BaseController {
  ValueNotifier<ControllerState> state = ValueNotifier(ControllerState.idle());

  Future<void> runFuture(AsyncCallback function, {String? message}) async {
    try {
      state.value = ControllerState.loading(message);
      await function();
      state.value = ControllerState.idle();
    } catch (error) {
      state.value = ControllerState.error('$error');
    }
  }
}
