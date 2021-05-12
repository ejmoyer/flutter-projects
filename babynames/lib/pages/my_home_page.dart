import 'package:babynames/model/record.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter'),
      ),
      body: _buildBody(context),
    );
  }

  _buildListItem(Record record) {
    return ListTile(
      title: Text(record.name),
      trailing: Text('${record.votes}'),
      onTap: () async {
        // put incrementer here
        setState(() {
          var num = record.votes;
          num++;
          record.reference.update({'votes': num});
        });
      },
    );
  }

  _buildList(List<Record> records) {
    List<ListTile> listTiles = [];
    for (Record record in records) {
      listTiles.add(_buildListItem(record));
    }
    return ListView(
      children: <Widget>[
        ...listTiles,
      ],
    );
  }

  _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('baby').snapshots(),
        builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        List<Record> records = [];
        for(DocumentSnapshot doc in snapshot.data.docs) {
          records.add(Record.fromSnapshot(doc));
        }
        return _buildList(records);
        },
    );
  }
}