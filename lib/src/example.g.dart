// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Example _$ExampleFromJson(Map<String, dynamic> json) {
  return new Example(
      documentId: json['documentId'] as int ?? 0,
      exampleId: json['exampleId'] as int ?? 0,
      id: json['id'] as int ?? 0,
      provider: json['provider'] == null
          ? null
          : new ContentProvider.fromJson(
              json['provider'] as Map<String, dynamic>),
      rating: (json['rating'] as num)?.toDouble() ?? 0.0,
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
      year: json['year'] as int ?? 0);
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
  Map<String, dynamic> toJson() => <String, dynamic>{
        'documentId': documentId,
        'exampleId': exampleId,
        'id': id,
        'provider': provider,
        'rating': rating,
        'score': score,
        'sentence': sentence,
        'text': text,
        'title': title,
        'url': url,
        'word': word,
        'year': year
      };
}
