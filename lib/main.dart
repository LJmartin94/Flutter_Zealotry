import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Text(
        "Hello World",
        style: TextStyle(
          fontSize: 30,
          color: Colors.blue,
        ),
      ),
    );
  }
}
