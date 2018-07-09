import 'package:json_annotation/json_annotation.dart';

part 'simple_definition.g.dart';

@JsonSerializable(includeIfNull: false)
class SimpleDefinition extends Object with _$SimpleDefinitionSerializerMixin {
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
}
