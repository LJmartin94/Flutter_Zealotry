import 'package:flutter/material.dart';
import './morning_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(primary: Color(0xFF808080)),
      ),
      home: MorningMenu(),
    );
  }
}
