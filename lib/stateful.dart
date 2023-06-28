import 'package:flutter/material.dart';

class MyStatefulScreen extends StatefulWidget {
  const MyStatefulScreen({super.key});

  @override
  State<MyStatefulScreen> createState() => _MyStatefulScreenState();
}

class _MyStatefulScreenState extends State<MyStatefulScreen> {
  List<String> names = ['Elon', 'Bill', 'Mark'];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Widegt"),
      ),
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
