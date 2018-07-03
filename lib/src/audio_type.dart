import 'dart:convert';

class AudioType {
  final int id;
  final String name;

  AudioType.fromMap(Map<String, dynamic> map)
  : id = map['id'] ?? 0,
    name = map['name'];
  
  factory AudioType.fromJson(String jsonString) {
    return AudioType.fromMap(json.decode(jsonString));
  }
}