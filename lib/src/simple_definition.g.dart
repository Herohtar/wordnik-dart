// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleDefinition _$SimpleDefinitionFromJson(Map<String, dynamic> json) {
  return new SimpleDefinition(
      note: json['note'] as String,
      partOfSpeech: json['partOfSpeech'] as String,
      source: json['source'] as String,
      text: json['text'] as String);
}

abstract class _$SimpleDefinitionSerializerMixin {
  String get note;
  String get partOfSpeech;
  String get source;
  String get text;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'note': note,
        'partOfSpeech': partOfSpeech,
        'source': source,
        'text': text
      };
}
