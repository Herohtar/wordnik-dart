import 'dart:convert';

class ExampleUsage {
  final String text;

  ExampleUsage.fromMap(Map<String, dynamic> map)
  : text = map['text'];
  
  factory ExampleUsage.fromJson(String jsonString) {
    return ExampleUsage.fromMap(json.decode(jsonString));
  }
}