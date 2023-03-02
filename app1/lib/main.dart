import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final list = [
    "Loloooooooooooooooooooo", "Lolllllllllllllllll","Looooool","Lol","Lol","Lol",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("La mia bellissima apppp"),
        ),
        body: SingleChildScrollView(child: Column(
          children: list.map((e) => Text(e)).toList()))
      ),
    );
  }
}
