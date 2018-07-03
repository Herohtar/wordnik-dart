import 'dart:convert';

class Note {
  final List<String> appliesTo;
  final String noteType;
  final int pos;
  final String value;

  Note.fromMap(Map<String, dynamic> map)
  : appliesTo = List<String>.from(map['appliesTo'] ?? <String>[]),
    noteType = map['noteType'],
    pos = map['pos'] ?? 0,
    value = map['value'];

  factory Note.fromJson(String jsonString) {
    return Note.fromMap(json.decode(jsonString));
  }
}
