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

final _randomWordPairs = <WordPair>[];

Widget _buildRow(content) {
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
            child: Text(content),
          ),
        ),
      ),
    ),
  );
}

class RandomWordsState extends State<RandomWords> {
  final Widget _buildList = ListView.builder(
    // itemCount: morningButtons.length,
    padding: const EdgeInsets.all(2),
    itemBuilder: (BuildContext context, int index) {
      if (index >= morningButtons.length + _randomWordPairs.length) {
        _randomWordPairs.addAll(generateWordPairs().take(10));
      }
      if (index < morningButtons.length) {
        return _buildRow(morningButtons[index]);
      } else {
        return _buildRow(
            _randomWordPairs[index - morningButtons.length].asPascalCase);
      }
    },
  );

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
