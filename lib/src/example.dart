import 'dart:convert';

import 'package:wordnik/src/content_provider.dart';
import 'package:wordnik/src/scored_word.dart';
import 'package:wordnik/src/sentence.dart';

class Example {
  final int id;
  final String title;
  final int exampleId;
  final String text;
  final ScoredWord score;
  final Sentence sentence;
  final String word;
  final ContentProvider provider;
  final int year;
  final int rating;
  final int documentId;
  final String url;

  Example.fromMap(Map<String, dynamic> map)
  : id = map['id'] ?? 0,
    title = map['title'],
    exampleId = map['exampleId'] ?? 0,
    text = map['text'],
    score = (map['score'] == null) ? null : ScoredWord.fromMap(map['score']),
    sentence = (map['sentence'] == null) ? null : Sentence.fromMap(map['sentence']),
    word = map['word'],
    provider = (map['provider'] == null) ? null : ContentProvider.fromMap(map['provider']),
    year = map['year'] ?? 0,
    rating = map['rating'] ?? 0,
    documentId = map['documentId'] ?? 0,
    url = map['url'];

  factory Example.fromJson(String jsonString) {
    return Example.fromMap(json.decode(jsonString));
  }
}
