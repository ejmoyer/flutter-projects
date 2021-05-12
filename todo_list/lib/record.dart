import 'package:cloud_firestore/cloud_firestore.dart';

class Record {
  String _name;
  bool _completed;
  DocumentReference reference;
  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : _name = map['name'],
        _completed = map['completed'];
  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data(), reference: snapshot.reference);
  Map toJson(){
    return {
      'name': _name,
      'completed': _completed,
    };
  }
  String get name => _name;
  set name(String value) {
    _name = value;
    reference.update(toJson());
  }
  bool get completed => _completed;
  set completed(bool value) {
    _completed = value;
    reference.update(toJson());
  }
}