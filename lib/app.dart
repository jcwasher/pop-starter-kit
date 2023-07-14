import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pop_starter_kit/dependencies.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        textTheme: GoogleFonts.karlaTextTheme().apply(bodyColor: Colors.white),
      ),
      routerConfig: appRouter.config(),
    );
  }
}
