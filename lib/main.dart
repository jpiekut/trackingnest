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
        floatingActionButton: FloatingActionButton.extended(
          label: Text('Add Subscription'),
          onPressed: () {},
        ),
        body: const Center(
          child: Subscriptions(),
        ),
      ),
    );
  }
}

class Subscriptions extends StatefulWidget {
  const Subscriptions({Key? key}) : super(key: key);
  @override
  State<Subscriptions> createState() => _Subscriptions();
}

class _Subscriptions extends State<Subscriptions> {
  @override
  Widget build(BuildContext context) {
    final _suggestions = <String>[
      "Netflix",
      "Prime",
      "YouTube Premium",
      "Disney+"
    ];
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
