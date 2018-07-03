import 'dart:convert';

class TextPron {
  final String raw;
  final String rawType;
  final int seq;

  TextPron.fromMap(Map<String, dynamic> map)
  : raw = map['raw'],
    rawType = map['rawType'],
    seq = map['seq'] ?? 0;
  
  factory TextPron.fromJson(String jsonString) {
    return TextPron.fromMap(json.decode(jsonString));
  }
}