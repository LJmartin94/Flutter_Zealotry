import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light(primary: Color(0xFF808080)),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Zealotry Flutter"),
        ),
        body: Center(
          child: Text("${wordPair.first} ${wordPair.second}"),
        ),
      ),
    );
  }
}
