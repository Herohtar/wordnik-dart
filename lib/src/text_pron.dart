import 'dart:convert';

class TextPron {
  final String raw;
  final int seq;
  final String rawType;

  TextPron.fromMap(Map<String, dynamic> map)
  : raw = map['raw'],
    seq = map['seq'] ?? 0,
    rawType = map['rawType'];
  
  factory TextPron.fromJson(String jsonString) {
    return TextPron.fromMap(json.decode(jsonString));
  }
}