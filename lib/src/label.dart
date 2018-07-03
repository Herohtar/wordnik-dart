import 'dart:convert';

class Label {
  final String text;
  final String type;

  Label.fromMap(Map<String, dynamic> map)
  : text = map['text'],
    type = map['type'];
  
  factory Label.fromJson(String jsonString) {
    return Label.fromMap(json.decode(jsonString));
  }
}