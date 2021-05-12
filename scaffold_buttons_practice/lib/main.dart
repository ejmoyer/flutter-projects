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
        body: Center(
          child: Text('Hello World'),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        persistentFooterButtons: <Widget>[
          RaisedButton(
            elevation: 10.0,
            disabledColor: Colors.green,
            child: Icon(
              Icons.print,
              color: Colors.white,
            ),
          ),
          RaisedButton(
            elevation: 10.0,
            disabledColor: Colors.blueGrey,
            child: Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        ],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.teal,
          items: [
            BottomNavigationBarItem(
              title: Text("Home"),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text("Search"),
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              title: Text("Add"),
              icon: Icon(Icons.add_box),
            ),
          ],
          onTap: (int index) {
            print(index);
          }
        ),
      ),
    );
  }
}