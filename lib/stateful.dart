import 'package:flutter/material.dart';
import 'dart:math';

class MyStatefulScreen extends StatefulWidget {
  const MyStatefulScreen({super.key});

  @override
  State<MyStatefulScreen> createState() => _MyStatefulScreenState();
}

class _MyStatefulScreenState extends State<MyStatefulScreen> {
  List<String> names = ['Elon', 'Bill', 'Mark'];
  int i = 0;
  Color color = Colors.red;

  Color getRandomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Widegt"),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: color,
          child: Icon(Icons.color_lens),
          onPressed: () {
            setState(() {
              color = getRandomColor();
            });
          }),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("My name is ${names[i]}"),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (i < names.length - 1) {
                    i++;
                  }
                });
              },
              child: const Text("Next")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (i != 0) {
                    i--;
                  }
                });
              },
              child: const Text("Go back"))
        ],
      )),
    );
  }
}
