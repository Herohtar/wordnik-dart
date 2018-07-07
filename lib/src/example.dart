import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/content_provider.dart';
import 'package:wordnik/src/scored_word.dart';
import 'package:wordnik/src/sentence.dart';

part 'example.g.dart';

@JsonSerializable()
class Example extends Object with _$ExampleSerializerMixin {
  @JsonKey(defaultValue: 0)
  final int documentId;

  @JsonKey(defaultValue: 0)
  final int exampleId;

  @JsonKey(defaultValue: 0)
  final int id;

  final ContentProvider provider;

  @JsonKey(defaultValue: 0.0)
  final double rating;

  final ScoredWord score;

  final Sentence sentence;

  final String text;

  final String title;

  final String url;

  final String word;

  @JsonKey(defaultValue: 0)
  final int year;

  Example(
    {
      this.documentId = 0,
      this.exampleId = 0,
      this.id = 0,
      this.provider,
      this.rating = 0.0,
      this.score,
      this.sentence,
      this.text,
      this.title,
      this.url,
      this.word,
      this.year = 0
    }
  );

  factory Example.fromJson(Map<String, dynamic> json) => _$ExampleFromJson(json);
}
