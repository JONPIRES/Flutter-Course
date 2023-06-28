import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  void handleChange() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Rocksss"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      body: Row(children: [
        const Text('Hello'),
        ElevatedButton(onPressed: () {}, child: const Text('Submit')),
        Image.asset(
          'assets/images/mountain.png',
          height: 100,
          width: 100,
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green[300],
        child: const Icon(Icons.message),
      ),
    );
  }
}
