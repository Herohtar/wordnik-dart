import 'dart:convert';

class SimpleDefinition {
  final String note;
  final String partOfSpeech;
  final String source;
  final String text;

  SimpleDefinition.fromMap(Map<String, dynamic> map)
  : note = map['note'],
    partOfSpeech = map['partOfSpeech'],
    source = map['source'],
    text = map['text'];

  factory SimpleDefinition.fromJson(String jsonString) {
    return SimpleDefinition.fromMap(json.decode(jsonString));
  }
}
