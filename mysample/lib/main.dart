/// Flutter code sample for SnackBar

// Here is an example of a [SnackBar] with an [action] button implemented using
// [SnackBarAction].

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: MyStatelessWidget(),
        ),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("Show Snackbar"),
      onPressed: () {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Awesome Snackbar!"),
            action: SnackBarAction(
              label: "Action",
              onPressed: () {
                // Code to execute.
              },
            ),
          ),
        );
      },
    );
  }
}
