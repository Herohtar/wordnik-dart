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
  Map<String, dynamic> toJson() => <String, dynamic>{
        'canonicalForm': canonicalForm,
        'id': id,
        'originalWord': originalWord,
        'suggestions': suggestions,
        'vulgar': vulgar,
        'word': word
      };
}
