// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'part_of_speech.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartOfSpeech _$PartOfSpeechFromJson(Map<String, dynamic> json) {
  return new PartOfSpeech(
      allCategories: (json['allCategories'] as List)
              ?.map((e) => e == null
                  ? null
                  : new Category.fromJson(e as Map<String, dynamic>))
              ?.toList() ??
          [],
      roots: (json['roots'] as List)
              ?.map((e) => e == null
                  ? null
                  : new Root.fromJson(e as Map<String, dynamic>))
              ?.toList() ??
          [],
      storageAbbr:
          (json['storageAbbr'] as List)?.map((e) => e as String)?.toList() ??
              []);
}

abstract class _$PartOfSpeechSerializerMixin {
  List<Category> get allCategories;
  List<Root> get roots;
  List<String> get storageAbbr;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'allCategories': allCategories,
        'roots': roots,
        'storageAbbr': storageAbbr
      };
}
