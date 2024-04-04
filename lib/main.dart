import 'package:flutter/material.dart';

import 'counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  final Counter _counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Count:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '${_counter.value}',
              style: const TextStyle(fontSize: 36),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _counter.increment();
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _counter.decrement();
              });
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
