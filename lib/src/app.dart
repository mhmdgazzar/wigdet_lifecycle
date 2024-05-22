import 'package:flutter/material.dart';
import 'package:wigdet_lifecycle/src/features/main_screen/presentation/main_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}
