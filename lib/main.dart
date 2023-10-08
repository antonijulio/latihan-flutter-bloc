// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class Counter extends Cubit<int> {
  Counter() : super(0); //initial value

  void incerement() {
    emit(state + 1);
  }

  void decrement() {
    emit(state - 1);
  }

  // fitur memantau data

  int? current;
  int? next;

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    current = change.currentState;
    next = change.nextState;
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Stream<int> count() async* {
    for (int i = 0; i <= 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  @override
  Widget build(BuildContext context) {
    final myCounter = Counter();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            stream: myCounter.stream,
            builder: (context, snapshot) {
              return Column(
                children: [
                  Text(
                    '${snapshot.data}',
                    style: const TextStyle(fontSize: 50),
                  ),
                  Text(
                    'current: ${myCounter.current}',
                    style: const TextStyle(fontSize: 50),
                  ),
                  Text(
                    'next: ${myCounter.next}',
                    style: const TextStyle(fontSize: 50),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => myCounter.decrement(),
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () => myCounter.incerement(),
                icon: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
