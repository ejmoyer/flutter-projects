import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          leading: Icon(Icons.arrow_back),
          title: Row(
            children: [
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
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Send a new message..',
                ),
              ),
            ),
          ),
          Icon(
            Icons.attach_file,
          ),
          Icon(
            Icons.mic_rounded,
          )
        ],
        ),
    );
  }
}