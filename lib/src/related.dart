import 'dart:convert';

class Related {
  final String relationshipType;
  final String label1;
  final String label2;
  final String label3;
  final String label4;
  final List<String> words;
  final String gram;

  Related.fromMap(Map<String, dynamic> map)
  : relationshipType = map['relationshipType'],
    label1 = map['label1'],
    label2 = map['label2'],
    label3 = map['label3'],
    label4 = map['label4'],
    words = List<String>.from(map['words'] ?? <String>[]),
    gram = map['gram'];

  factory Related.fromJson(String jsonString) {
    return Related.fromMap(json.decode(jsonString));
  }
}
