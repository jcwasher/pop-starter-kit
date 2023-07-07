import 'package:flutter/material.dart';
import 'package:pop_starter_kit/controllers/base_controller.dart';
import 'package:pop_starter_kit/dependencies.dart';

class AuthController extends BaseController {
  ValueNotifier<bool> authenticated = ValueNotifier(false);

  Future<void> signInWithCredentials({
    required String username,
    required String password,
  }) async {
    authenticated.value = await loadFuture(() {
      return tokenService.fetch(username: username, password: password);
    });
  }

  Future<void> signInWithToken() async {
    authenticated.value = await tokenService.validate();
  }
}
