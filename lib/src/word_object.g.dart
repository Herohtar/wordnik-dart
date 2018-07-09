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

abstract class _$WordObjectSerializerMixin {
  String get canonicalForm;
  int get id;
  String get originalWord;
  List<String> get suggestions;
  String get vulgar;
  String get word;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('canonicalForm', canonicalForm);
    writeNotNull('id', id);
    writeNotNull('originalWord', originalWord);
    writeNotNull('suggestions', suggestions);
    writeNotNull('vulgar', vulgar);
    writeNotNull('word', word);
    return val;
  }
}
