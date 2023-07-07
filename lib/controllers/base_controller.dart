import 'package:flutter/foundation.dart';

abstract class BaseController {
  ValueNotifier<bool> isLoading = ValueNotifier(false);

  Future<T> loadFuture<T>(Future<T> Function() function) async {
    isLoading.value = true;
    try {
      T result = await function();
      return result;
    } finally {
      isLoading.value = false;
    }
  }
}
