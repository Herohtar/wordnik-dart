import 'dart:convert';

class ScoredWord {
  final double baseWordScore;
  final int docTermCount;
  final int id;
  final String lemma;
  final String partOfSpeech;
  final int position;
  final double score;
  final int sentenceId;
  final bool stopword;
  final String word;
  final String wordType;

  ScoredWord.fromMap(Map<String, dynamic> map)
  : baseWordScore = (map['baseWordScore'] ?? 0).toDouble(),
    docTermCount = map['docTermCount'] ?? 0,
    id = map['id'] ?? 0,
    lemma = map['lemma'],
    partOfSpeech = map['partOfSpeech'],
    position = map['position'] ?? 0,
    score = (map['score'] ?? 0).toDouble(),
    sentenceId = map['sentenceId'] ?? 0,
    stopword = map['stopword'] ?? false,
    word = map['word'],
    wordType = map['wordType'];

  factory ScoredWord.fromJson(String jsonString) {
    return ScoredWord.fromMap(json.decode(jsonString));
  }
}
