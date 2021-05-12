import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container (
            height: 40,
            width: 150,
            margin: const EdgeInsets.only(top: 40),
            decoration: BoxDecoration (
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Align (
              alignment: Alignment.centerLeft,
              child: Container (
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                ),
                child: Center(child: Text ("Challenge")),
              ),
            ),
          ),
        ),
    ),
    );
  }
}