import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/models/content_provider.dart';
import 'package:wordnik/src/models/simple_definition.dart';
import 'package:wordnik/src/models/simple_example.dart';

part 'word_of_the_day.g.dart';

@JsonSerializable(includeIfNull: false)
class WordOfTheDay {
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

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$WordOfTheDayToJson(this);
}
