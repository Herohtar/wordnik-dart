import 'dart:convert';

import 'package:wordnik/src/scored_word.dart';

class Sentence {
  final String display;
  final int documentMetadataId;
  final bool hasScoredWords;
  final int id;
  final int rating;
  final List<ScoredWord> scoredWords;

  Sentence.fromMap(Map<String, dynamic> map)
  : display = map['display'],
    documentMetadataId = map['documentMetadataId'] ?? 0,
    hasScoredWords = map['hasScoredWords'] ?? false,
    id = map['id'] ?? 0,
    rating = map['rating'] ?? 0,
    scoredWords = map['scoredWords']?.map<ScoredWord>((word) => ScoredWord.fromMap(word))?.toList() ?? <ScoredWord>[];

  factory Sentence.fromJson(String jsonString) {
    return Sentence.fromMap(json.decode(jsonString));
  }
}
