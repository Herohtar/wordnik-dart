import 'dart:convert';

class Category {
  final int id; // TODO: required
  final String name;

  Category.fromMap(Map<String, dynamic> map)
  : id = map['id'] ?? 0,
    name = map['name'];
  
  factory Category.fromJson(String jsonString) {
    return Category.fromMap(json.decode(jsonString));
  }
}