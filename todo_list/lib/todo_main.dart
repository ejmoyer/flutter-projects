import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/record.dart';
import 'package:todo_list/todo_events.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Projects"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              FirebaseFirestore.instance.collection("todo").add({
                "name": "Project",
              });
            },
          ),
        ],
      ),
      body: _buildBody(context),
    );
  }

    _buildListItem(Record record) {
      return ListTile(
        title: Text(record.name ?? 'default'),
        onTap: () async {
          // put incrementer here
          setState(() {
            //record.reference.update({'completed': true});
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return TodoEvents();
              })
            );
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
        stream: FirebaseFirestore.instance.collection('todo').snapshots(),
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