import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

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
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

final List<String> morningButtons = <String>[
  "Wake Up",
  "Get Up",
  "Shower",
  "News",
  "Open Curtains",
  "Coffee",
  "Smoothie",
  "Water",
  "Vitamins",
  "Dishes",
  "Breakfast",
  "Water Plants",
  "Meditation",
  "Language",
  "Brush Teeth",
  "Cosmeticism",
  "Pack Bag",
  "Make Bed",
  "Take out the Bins",
];

class RandomWordsState extends State<RandomWords> {
  final Widget _buildList = ListView.builder(
    itemCount: morningButtons.length,
    padding: const EdgeInsets.all(2),
    itemBuilder: (BuildContext context, int index) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: Ink(
          color: Colors.grey[300],
          child: InkWell(
            splashColor: Colors.grey,
            splashFactory: InkRipple.splashFactory,
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Text(morningButtons[index]),
              ),
            ),
          ),
        ),
      );
    },
  );

  final wordPair = WordPair.random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zealotry Flutter"),
      ),
      body: _buildList,
    );
  }
}
