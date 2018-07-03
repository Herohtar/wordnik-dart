import 'dart:convert';

class WordListWord {
  final DateTime createdAt;
  final int id; // TODO: required
  final int numberCommentsOnWord;
  final int numberLists;
  final int userId;
  final String username;
  final String word;

  WordListWord.fromMap(Map<String, dynamic> map)
  : createdAt = (map['createdAt'] == null) ? null : DateTime.parse(map['createdAt']),
    id = map['id'] ?? 0,
    numberCommentsOnWord = map['numberCommentsOnWord'] ?? 0,
    numberLists = map['numberLists'] ?? 0,
    userId = map['userId'] ?? 0,
    username = map['username'],
    word = map['word'];
  
  factory WordListWord.fromJson(String jsonString) {
    return WordListWord.fromMap(json.decode(jsonString));
  }
}