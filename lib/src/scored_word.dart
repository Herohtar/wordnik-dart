import 'dart:convert';

class ScoredWord {
  final int position;
  final int id;
  final int docTermCount;
  final String lemma;
  final String wordType;
  final double score;
  final String word;
  final int sentenceId;
  final bool stopword;
  final double baseWordScore;
  final String partOfSpeech;

  ScoredWord.fromMap(Map<String, dynamic> map)
  : position = map['position'] ?? 0,
    id = map['id'] ?? 0,
    docTermCount = map['docTermCount'] ?? 0,
    lemma = map['lemma'],
    wordType = map['wordType'],
    score = map['score'] ?? 0,
    word = map['word'],
    sentenceId = map['sentenceId'] ?? 0,
    stopword = map['stopword'] ?? false,
    baseWordScore = map['baseWordScore'] ?? 0,
    partOfSpeech = map['partOfSpeech'];
  
  factory ScoredWord.fromJson(String jsonString) {
    return ScoredWord.fromMap(json.decode(jsonString));
  }
}