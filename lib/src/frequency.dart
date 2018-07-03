import 'dart:convert';

class Frequency {
  final int count;
  final int year;

  Frequency.fromMap(Map<String, dynamic> map)
  : count = map['count'] ?? 0,
    year = map['year'] ?? 0;
  
  factory Frequency.fromJson(String jsonString) {
    return Frequency.fromMap(json.decode(jsonString));
  }
}