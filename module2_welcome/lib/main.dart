import 'package:flutter/material.dart';
import 'package:module2_welcome/login.dart';
import 'package:module2_welcome/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: WelcomePage()
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(0.0, 0.0), // 10% of the width, so there are ten blinds.
              radius: 0.2,
              colors: <Color>[
                Color(0xff5724c9),
                Color(0xff6e35c6)
              ], // red to yellow
              tileMode: TileMode.mirror, // repeats the gradient over the canvas
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Container(
                      child: Text(
                          'Welcome to GroupChat.',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 500.0),
                  child: Column(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                  return LoginPage();
                                },
                                ),
                              );
                            },
                              child: Text('Login')
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
              ],
            ),
          ),
        ),
    );
  }
}