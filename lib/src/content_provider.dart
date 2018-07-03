import 'dart:convert';

class ContentProvider {
  final int id;
  final String name;

  ContentProvider.fromMap(Map<String, dynamic> map)
  : id = map['id'] ?? 0,
    name = map['name'];
  
  factory ContentProvider.fromJson(String jsonString) {
    return ContentProvider.fromMap(json.decode(jsonString));
  }
}