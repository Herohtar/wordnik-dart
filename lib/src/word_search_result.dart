import 'dart:convert';

class WordSearchResult {
  final int count;
  final double lexicality;
  final String word;

  WordSearchResult.fromMap(Map<String, dynamic> map)
  : count = map['count'] ?? 0,
    lexicality = (map['lexicality'] ?? 0).toDouble(),
    word = map['word'];

  factory WordSearchResult.fromJson(String jsonString) {
    return WordSearchResult.fromMap(json.decode(jsonString));
  }
}
