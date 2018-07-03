import 'dart:convert';

class WordObject {
  final int id;
  final String word;
  final String originalWord;
  final List<String> suggestions;
  final String canonicalForm;
  final String vulgar;

  WordObject.fromMap(Map<String, dynamic> map)
  : id = map['id'] ?? 0,
    word = map['word'],
    originalWord = map['originalWord'],
    suggestions = List<String>.from(map['suggestions'] ?? <String>[]),
    canonicalForm = map['canonicalForm'],
    vulgar = map['vulgar'];

  factory WordObject.fromJson(String jsonString) {
    return WordObject.fromMap(json.decode(jsonString));
  }
}
