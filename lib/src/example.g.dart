// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Example _$ExampleFromJson(Map<String, dynamic> json) {
  return new Example(
      documentId: json['documentId'] as int,
      exampleId: json['exampleId'] as int,
      id: json['id'] as int,
      provider: json['provider'] == null
          ? null
          : new ContentProvider.fromJson(
              json['provider'] as Map<String, dynamic>),
      rating: (json['rating'] as num)?.toDouble(),
      score: json['score'] == null
          ? null
          : new ScoredWord.fromJson(json['score'] as Map<String, dynamic>),
      sentence: json['sentence'] == null
          ? null
          : new Sentence.fromJson(json['sentence'] as Map<String, dynamic>),
      text: json['text'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      word: json['word'] as String,
      year: json['year'] as int);
}

abstract class _$ExampleSerializerMixin {
  int get documentId;
  int get exampleId;
  int get id;
  ContentProvider get provider;
  double get rating;
  ScoredWord get score;
  Sentence get sentence;
  String get text;
  String get title;
  String get url;
  String get word;
  int get year;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('documentId', documentId);
    writeNotNull('exampleId', exampleId);
    writeNotNull('id', id);
    writeNotNull('provider', provider);
    writeNotNull('rating', rating);
    writeNotNull('score', score);
    writeNotNull('sentence', sentence);
    writeNotNull('text', text);
    writeNotNull('title', title);
    writeNotNull('url', url);
    writeNotNull('word', word);
    writeNotNull('year', year);
    return val;
  }
}
