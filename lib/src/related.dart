import 'dart:convert';

class Related {
  final String gram;
  final String label1;
  final String label2;
  final String label3;
  final String label4;
  final String relationshipType;
  final List<String> words;

  Related.fromMap(Map<String, dynamic> map)
  : gram = map['gram'],
    label1 = map['label1'],
    label2 = map['label2'],
    label3 = map['label3'],
    label4 = map['label4'],
    relationshipType = map['relationshipType'],
    words = List<String>.from(map['words'] ?? <String>[]);

  factory Related.fromJson(String jsonString) {
    return Related.fromMap(json.decode(jsonString));
  }
}
