import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var count = 0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Hemlo"),
            centerTitle: true,
          ),
          body: Container(
            child: Center(
              child: Text("Welcome to 30 days of Flutter"),
            ),
          ),
        )
    );
  }
}

counter() {
  count += 1;
}
