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

Map<String, dynamic> _$ExampleToJson(Example instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('documentId', instance.documentId);
  writeNotNull('exampleId', instance.exampleId);
  writeNotNull('id', instance.id);
  writeNotNull('provider', instance.provider);
  writeNotNull('rating', instance.rating);
  writeNotNull('score', instance.score);
  writeNotNull('sentence', instance.sentence);
  writeNotNull('text', instance.text);
  writeNotNull('title', instance.title);
  writeNotNull('url', instance.url);
  writeNotNull('word', instance.word);
  writeNotNull('year', instance.year);
  return val;
}
