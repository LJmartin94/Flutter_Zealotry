import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light(primary: Color(0xFF808080)),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Zealotry Flutter"),
        ),
        body: const Center(
          child: Text("test"),
        ),
      ),
    );
  }
}
