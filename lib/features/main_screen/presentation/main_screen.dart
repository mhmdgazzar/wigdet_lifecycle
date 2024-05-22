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
    print('.... initstate ....');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('.... Build ....');
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
                  print('.... setstate ....');
                  print('.... Button pressed ....');
                  x = x + 1;
                  print('x incrementiert');
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
    print(".... Dispose ....");
    setState(() {
      print('.... Dispose called ....');
      x = 0;
      print('x auf 0 gesetzt');
    });
    super.dispose();
  }
}
