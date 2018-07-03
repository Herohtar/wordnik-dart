import 'dart:convert';

class Syllable {
  final int seq;
  final String text;
  final String type;

  Syllable.fromMap(Map<String, dynamic> map)
  : seq = map['seq'] ?? 0,
    text = map['text'],
    type = map['type'];
  
  factory Syllable.fromJson(String jsonString) {
    return Syllable.fromMap(json.decode(jsonString));
  }
}