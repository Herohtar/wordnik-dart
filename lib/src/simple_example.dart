import 'dart:convert';

class SimpleExample {
  final int id;
  final String text;
  final String title;
  final String url;

  SimpleExample.fromMap(Map<String, dynamic> map)
  : id = map['id'] ?? 0,
    text = map['text'],
    title = map['title'],
    url = map['url'];

  factory SimpleExample.fromJson(String jsonString) {
    return SimpleExample.fromMap(json.decode(jsonString));
  }
}
