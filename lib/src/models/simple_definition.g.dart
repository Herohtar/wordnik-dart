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

Map<String, dynamic> _$SimpleDefinitionToJson(SimpleDefinition instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('note', instance.note);
  writeNotNull('partOfSpeech', instance.partOfSpeech);
  writeNotNull('source', instance.source);
  writeNotNull('text', instance.text);
  return val;
}
