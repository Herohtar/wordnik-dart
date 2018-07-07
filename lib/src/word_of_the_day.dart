import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/content_provider.dart';
import 'package:wordnik/src/simple_definition.dart';
import 'package:wordnik/src/simple_example.dart';

part 'word_of_the_day.g.dart';

@JsonSerializable()
class WordOfTheDay extends Object with _$WordOfTheDaySerializerMixin {
  final String category;

  final ContentProvider contentProvider;

  final DateTime createdAt;

  final String createdBy;

  @JsonKey(defaultValue: <SimpleDefinition>[])
  final List<SimpleDefinition> definitions;

  @JsonKey(defaultValue: <SimpleExample>[])
  final List<SimpleExample> examples;

  final String htmlExtra;

  @JsonKey(required: true, defaultValue: 0)
  final int id;

  final String note;

  final String parentId;

  final DateTime publishDate;

  final String word;

  WordOfTheDay(
    this.id,
    {
      this.category,
      this.contentProvider,
      this.createdAt,
      this.createdBy,
      List<SimpleDefinition> definitions,
      List<SimpleExample> examples,
      this.htmlExtra,
      this.note,
      this.parentId,
      this.publishDate,
      this.word
    }
  )
  : this.definitions = definitions ?? <SimpleDefinition>[],
    this.examples = examples ?? <SimpleExample>[];

  factory WordOfTheDay.fromJson(Map<String, dynamic> json) => _$WordOfTheDayFromJson(json);
}
