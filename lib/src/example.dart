import 'dart:convert';

import 'package:wordnik/src/content_provider.dart';
import 'package:wordnik/src/scored_word.dart';
import 'package:wordnik/src/sentence.dart';

class Example {
  final int documentId;
  final int exampleId;
  final int id;
  final ContentProvider provider;
  final double rating;
  final ScoredWord score;
  final Sentence sentence;
  final String text;
  final String title;
  final String url;
  final String word;
  final int year;

  Example.fromMap(Map<String, dynamic> map)
  : documentId = map['documentId'] ?? 0,
    exampleId = map['exampleId'] ?? 0,
    id = map['id'] ?? 0,
    provider = (map['provider'] == null) ? null : ContentProvider.fromMap(map['provider']),
    rating = map['rating'] ?? 0,
    score = (map['score'] == null) ? null : ScoredWord.fromMap(map['score']),
    sentence = (map['sentence'] == null) ? null : Sentence.fromMap(map['sentence']),
    text = map['text'],
    title = map['title'],
    url = map['url'],
    word = map['word'],
    year = map['year'] ?? 0;

  factory Example.fromJson(String jsonString) {
    return Example.fromMap(json.decode(jsonString));
  }
}
