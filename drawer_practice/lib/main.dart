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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                    "Title",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text("Inbox"),
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text("Outbox"),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Favorites"),
              ),
              ListTile(
                leading: Icon(Icons.archive),
                title: Text("Archive"),
              ),
              ListTile(
                leading: Icon(Icons.restore_from_trash),
                title: Text("Trash"),
              ),
              ListTile(
                leading: Icon(Icons.warning),
                title: Text("Spam"),
              ),
              Divider(
                height: 20,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Labels"
                ),
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text("Family"),
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text("Friends"),
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text("Works"),
              ),
              Divider(
                height: 20,
                thickness: 2,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings & Account"),
              ),
            ],
          )
        ),
      ),
    );
  }
}