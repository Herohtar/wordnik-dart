import 'dart:convert';

class Note {
  final String noteType;
  final List<String> appliesTo;
  final String value;
  final int pos;

  Note.fromMap(Map<String, dynamic> map)
  : noteType = map['noteType'],
    appliesTo = List<String>.from(map['appliesTo'] ?? <String>[]),
    value = map['value'],
    pos = map['pos'] ?? 0;

  factory Note.fromJson(String jsonString) {
    return Note.fromMap(json.decode(jsonString));
  }
}
