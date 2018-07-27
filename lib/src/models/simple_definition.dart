import 'package:json_annotation/json_annotation.dart';

part 'simple_definition.g.dart';

@JsonSerializable(includeIfNull: false)
class SimpleDefinition {
  final String note;

  final String partOfSpeech;

  final String source;

  final String text;

  SimpleDefinition(
    {
      this.note,
      this.partOfSpeech,
      this.source,
      this.text
    }
  );

  factory SimpleDefinition.fromJson(Map<String, dynamic> json) => _$SimpleDefinitionFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$SimpleDefinitionToJson(this);
}
