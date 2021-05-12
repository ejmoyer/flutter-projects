import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25.0), bottomRight: Radius.circular(25.0))
                  ),
                height: 400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Bali Indonesia",
                    style: TextStyle(
                      fontSize: 30,
                    )
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius:  BorderRadius.circular(20.0),
                    ),
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.star_border,
                      size: 20,
                    ),
                  ),
                ),
                Text("4.98"),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius:  BorderRadius.circular(20.0),
                    ),
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.star_border,
                      size: 20,
                    ),
                  ),
                ),
                Text("18 C"),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius:  BorderRadius.circular(20.0),
                    ),
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.star_border,
                      size: 20,
                    ),
                  ),
                ),
                Text("21 Dec"),
              ], // tri-icon row
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Description",
                style: TextStyle(
                  fontSize: 20,
                )
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
                child: Text(
                    "Bali is famous for beaches, countless waves for surfing, scuba diving, natural sites to visit and explore extremely fascinating Hindus culture with colorful ceremonies and magnificent temples the gifted artists produced."
                )
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Your Trip"
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  "126.99",
                style: TextStyle(
                  fontSize: 30.0,
            ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius:  BorderRadius.circular(20.0),
                    ),
                    height: 50,
                    width: 75,
                    child: Center(
                      child: Text(
                        "Book Now",
                      ),
                    ),
                  ),
                ),
              ],
            )
          ], // master column
        ),
      ),
    );
  }
}