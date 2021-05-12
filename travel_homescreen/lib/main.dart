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
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 40.0),
                child: Text(
                    "Discover the world with us!",
                  style: TextStyle(fontSize: 50),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 75.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD5D5D5),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      width: 200,
                      height: 30,
                      child: Center(
                        child: Text(
                          "Search somewhere..",
                        ),
                      )
                    )
                  ], // search bar row
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 75.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        width: 40,
                        height: 40,
                        child: Icon(
                         Icons.airplanemode_active,
                         size: 20.0,
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          width: 40,
                          height: 40,
                        child: Icon(
                          Icons.apartment,
                          size: 20.0,
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          width: 40,
                          height: 40,
                        child: Icon(
                          Icons.camera_alt,
                          size: 20.0,
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          width: 40,
                          height: 40,
                        child: Icon(
                          Icons.directions_bus,
                          size: 20.0,
                        )
                      ),
                    )
                  ], // button row
                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(left: 65.0, top: 100.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("New"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Most viewed", style: TextStyle(color: Colors.orangeAccent)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Hot tours"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("All"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 15.0),
                      children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                            ),
                            width: 175,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                              width: 175,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                              width: 175,
                            ),
                          ),
                        ],
                      ),
                  ),
                ),
            ], // Master Column
          ),
      ),
    );
  }
}