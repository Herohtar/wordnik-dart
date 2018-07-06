import 'dart:convert';

class WordObject {
  final String canonicalForm;
  final int id; // TODO: required
  final String originalWord;
  final List<String> suggestions;
  final String vulgar;
  final String word;

  WordObject.fromMap(Map<String, dynamic> map)
  : canonicalForm = map['canonicalForm'],
    id = map['id'] ?? 0,
    originalWord = map['originalWord'],
    suggestions = List<String>.from(map['suggestions'] ?? <String>[]),
    vulgar = map['vulgar'],
    word = map['word'];

  factory WordObject.fromJson(String jsonString) {
    return WordObject.fromMap(json.decode(jsonString));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic> {
      'canonicalForm': canonicalForm,
      'id': id,
      'originalWord': originalWord,
      'suggestions': suggestions,
      'vulgar': vulgar,
      'word': word
    };
  }
}
