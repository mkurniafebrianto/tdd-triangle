import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  String detectTriangle(num sideA, num sideB, num sideC) {
    final sides = [sideA, sideB, sideC];
    sides.sort();

    for (var side in sides) {
      if (side < 1) {
        throw Exception();
      }
    }

    if (sides[0] + sides[1] <= sides[2]) {
      throw Exception('This is Inequal Triangle');
    }

    return 'This is Equal Triangle';
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello World!'))),
    );
  }
}
