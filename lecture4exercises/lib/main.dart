import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> entries = <String>['Earth', 'Mars', 'Jupiter', 'Saturn', "Uranus", "Neptune", "Mercury", "Venus"];
  final List<int> colorCodes = <int>[600, 500, 100, 200, 300, 400, 500, 700];
  final List<Map<String, String>> data = [
    {
      "planetName": "Earth",
      "galaxy": "Milky Way",
      "Distance": "96.2 million miles",
      "rotSpeed": "29.8 km/s",
    },
    {
      "planetName": "Mars",
      "galaxy": "Milky Way",
      "Distance": "483.8 million miles",
      "rotSpeed": "24.0 km/s",
    },
    {
      "planetName": "Jupiter",
      "galaxy": "Milky Way",
      "Distance": "141.6 million miles",
      "rotSpeed": "13.07 km/s",
    },
    {
      "planetName": "Saturn",
      "galaxy": "Milky Way",
      "Distance": "16.49 billion miles squared",
      "rotSpeed": "9.68 km/s",
    },
    {
      "planetName": "Uranus",
      "galaxy": "Milky Way",
      "Distance": "4.121 billion miles squared",
      "rotSpeed": "6.8 km/s",
    },
    {
      "planetName": "Neptune",
      "galaxy": "Milky Way",
      "Distance": "2.941 billion miles squared",
      "rotSpeed": "5.43 km/s",
    },
    {
      "planetName": "Venus",
      "galaxy": "Milky Way",
      "Distance": "67.24 million miles",
      "rotSpeed": "35.02 km/s",
    },
    {
      "planetName": "Mercury",
      "galaxy": "Milky Way",
      "Distance": "35.98 million miles",
      "rotSpeed": "47.3 km/s",
    },
    ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                color: Colors.deepPurpleAccent,
                //child: Center(child: Text('${data[index]['planetName']}')),
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.circle,
                          size: 75,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                        child: Column(
                          children: [
                            Text(
                              'Name: ${data[index]['planetName']}'
                            ),
                            Text(
                              'Galaxy: ${data[index]['galaxy']}'
                            ),
                            Text(
                              'Distance from Sun: ${data[index]['Distance']}'
                            ),
                            Text(
                              'Average Rotational Speed: ${data[index]['rotSpeed']}'
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ),
              );
            }
        ),
      ),
    ),
    );
  }
}