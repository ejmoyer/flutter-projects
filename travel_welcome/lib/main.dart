import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: WelcomeScreen()
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Color(0xFFc2d1e5),
          child: Stack(
            children: [
              Container(
              height: 500,
                child: FittedBox(
                    child: Image(image: NetworkImage("https://images.pexels.com/photos/1051075/pexels-photo-1051075.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",),
                  ),
                    fit: BoxFit.fill,
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 500.0),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff6c6cf),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 200,
                    width: 300,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Planning a trip?",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Text(
                            "Let us take care of you.",
                            style: TextStyle(
                              fontSize: 20,
                            )
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFfe793d),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            width: 100,
                            height: 35,
                            child: Center(
                              child: Text(
                                "Login",
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF95bddc),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            width: 100,
                            height: 35,
                            child: Center(
                              child: Text(
                                "Register",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
          ),
        ),
    );
  }
}