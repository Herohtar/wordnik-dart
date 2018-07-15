import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/models/content_provider.dart';
import 'package:wordnik/src/models/scored_word.dart';
import 'package:wordnik/src/models/sentence.dart';

part 'example.g.dart';

@JsonSerializable(includeIfNull: false)
class Example extends Object with _$ExampleSerializerMixin {
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

  Example(
    {
      this.documentId,
      this.exampleId,
      this.id,
      this.provider,
      this.rating,
      this.score,
      this.sentence,
      this.text,
      this.title,
      this.url,
      this.word,
      this.year
    }
  );

  factory Example.fromJson(Map<String, dynamic> json) => _$ExampleFromJson(json);
}
