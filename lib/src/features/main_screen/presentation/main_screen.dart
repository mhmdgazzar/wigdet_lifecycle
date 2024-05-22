import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int x = 0;

  @override
  void initState() {
    // TODO: implement initState
    debugPrint('.... initstate ...');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('.... Build ....');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello App Akademie!'),
            const SizedBox(
              height: 16,
            ),
            Text('$x'),
            const SizedBox(
              height: 16,
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  debugPrint('.... setstate ....');
                  debugPrint('.... Button pressed ....');
                  x = x + 1;
                  debugPrint('x incrementiert');
                });
              },
              child: const Text('Do it!'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    debugPrint(".... Dispose ....");
    setState(() {
      debugPrint('.... Dispose called ....');
      x = 0;
      debugPrint('x auf 0 gesetzt');
    });
    super.dispose();
  }
}
