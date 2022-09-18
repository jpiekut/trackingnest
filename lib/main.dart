import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrackingNest',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TrackingNest'),
        ),
        body: const Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);
  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final _suggestions = <String>["Netflix", "Prime"];
    final _biggerFont = const TextStyle(fontSize: 18);

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: _suggestions.length,
      itemBuilder: /*1*/ (context, i) {
        return ListTile(
          title: Text(
            _suggestions[i],
            style: _biggerFont,
          ),
        );
      },
    );
  }
}
