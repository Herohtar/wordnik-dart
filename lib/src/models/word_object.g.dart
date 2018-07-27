// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordObject _$WordObjectFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['id']);
  return new WordObject(json['id'] as int ?? 0,
      canonicalForm: json['canonicalForm'] as String,
      originalWord: json['originalWord'] as String,
      suggestions:
          (json['suggestions'] as List)?.map((e) => e as String)?.toList() ??
              [],
      vulgar: json['vulgar'] as String,
      word: json['word'] as String);
}

Map<String, dynamic> _$WordObjectToJson(WordObject instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('canonicalForm', instance.canonicalForm);
  writeNotNull('id', instance.id);
  writeNotNull('originalWord', instance.originalWord);
  writeNotNull('suggestions', instance.suggestions);
  writeNotNull('vulgar', instance.vulgar);
  writeNotNull('word', instance.word);
  return val;
}
