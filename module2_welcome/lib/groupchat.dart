import 'package:flutter/material.dart';
import 'package:module2_welcome/main.dart';
import "package:module2_welcome/account.dart";

class GroupChat extends StatelessWidget {
  final globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Row(
          children: [
            Icon(Icons.arrow_back),
            Icon(
              Icons.people,
              size: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Our Group'),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.call,
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.video_call,
              size: 30,
            ),
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text("Options"),
                ),
                ListTile(
                    title: Text("Group Chat"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return GroupChat();
                          },
                        ),
                      );
                    }
                ),
                ListTile(
                    title: Text("My Accounts"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return AccountPage();
                          },
                        ),
                      );
                    }
                ),
                ListTile(
                    title: Text('Logout'),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return WelcomePage();
                          },
                        ),
                            (route) => false,
                      );
                    }
                )
              ]
          )
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFE2E2E2),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 50.0),
                    child: Text("blah blah blah"),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF7519C4),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 5.0),
                    child: Text("blah blah blah"),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFE2E2E2),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 50.0),
                    child: Text("blah blah blah"),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF7519C4),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 5.0),
                    child: Text("blah blah blah"),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFE2E2E2),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 50.0),
                    child: Text("blah blah blah"),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF7519C4),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 5.0),
                    child: Text("blah blah blah"),
                  ),
                ),
              ),
            ]
        ),
      ),
      persistentFooterButtons: [
        Padding(
          padding: const EdgeInsets.only(right: 130.0),
          child: Container(
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Message',
                ),
              ),
            ),
          ),
        ),
        FlatButton(
          color: Colors.green,
            onPressed: () async {
              final snackBar = SnackBar(
                content: Text("Message Sent!"),
              );
              globalKey.currentState.showSnackBar(snackBar);
            }),
        Icon(
          Icons.attach_file,
        ),
        Icon(
          Icons.mic_rounded,
        )
      ],
    );
  }
}