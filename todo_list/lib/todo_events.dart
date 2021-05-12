import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/record.dart';

class TodoEvents extends StatefulWidget {
  @override
  _TodoEventsState createState() => _TodoEventsState();
}

class _TodoEventsState extends State<TodoEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasks"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              FirebaseFirestore.instance.collection("items").add({
                "name": "Task",
                "completed": false,
              });
            },
          ),
        ],
      ),
      body: _buildBody(context),
    );
  }

  _buildListItem(Record record) {
    if (record.completed == true) {
      return ListTile(
        title: Text(
          record.name,
          style: TextStyle(
              decoration: TextDecoration.lineThrough),
          ),
        );
    } else {
      return ListTile(
        title: Text(record.name),
        onTap: () async {
          setState(() {
            record.reference.update({'completed': true});
          });
        },
      );
    }
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
      stream: FirebaseFirestore.instance.collection('items').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        List<Record> records = [];
        for(DocumentSnapshot doc in snapshot.data.docs) {
          records.add(Record.fromSnapshot(doc));
          print(doc.data());
        }
        return _buildList(records);
      },
    );
  }
}