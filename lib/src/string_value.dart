import 'dart:convert';

class StringValue {
  final String word;

  StringValue.fromMap(Map<String, dynamic> map)
  : word = map['word'];

  factory StringValue.fromJson(String jsonString) {
    return StringValue.fromMap(json.decode(jsonString));
  }
}
