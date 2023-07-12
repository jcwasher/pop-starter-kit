import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.light(useMaterial3: true),
      routerConfig: appRouter.config(),
    );
  }
}
