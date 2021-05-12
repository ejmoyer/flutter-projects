import 'package:flutter/material.dart';
import 'package:module2_login/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.deepPurpleAccent,
          child: Center(
            child: Column(
              children: [
            Padding(
            padding: const EdgeInsets.only(top: 250.0, left: 8.0, right: 8.0, bottom: 8.0),
              child: Text(
                  'Login to GroupChat',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  ),
                 ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                       ),
                      ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                ),
                Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return RegisterPage();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Submit',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return RegisterPage();
                            },
                          ),
                        );
                      },
                      child: Text('Register'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}