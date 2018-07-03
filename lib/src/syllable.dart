import 'dart:convert';

class Syllable {
  final String text;
  final int seq;
  final String type;

  Syllable.fromMap(Map<String, dynamic> map)
  : text = map['text'],
    seq = map['seq'] ?? 0,
    type = map['type'];
  
  factory Syllable.fromJson(String jsonString) {
    return Syllable.fromMap(json.decode(jsonString));
  }
}