import 'dart:convert';

import 'package:wordnik/src/scored_word.dart';

class Sentence {
  final bool hasScoredWords;
  final int id;
  final List<ScoredWord> scoredWords;
  final String display;
  final int rating;
  final int documentMetadataId;

  Sentence.fromMap(Map<String, dynamic> map)
  : hasScoredWords = map['hasScoredWords'] ?? false,
    id = map['id'] ?? 0,
    scoredWords = map['scoredWords']?.map((word) => ScoredWord.fromMap(word))?.toList() ?? <ScoredWord>[],
    display = map['display'],
    rating = map['rating'] ?? 0,
    documentMetadataId = map['documentMetadataId'] ?? 0;

  factory Sentence.fromJson(String jsonString) {
    return Sentence.fromMap(json.decode(jsonString));
  }
}
