import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

mixin ListenableMixin {
  List<ValueListenable> get listenables;

  void listen() {
    listenables.forEach((listenable) => useListenable(listenable));
  }
}
