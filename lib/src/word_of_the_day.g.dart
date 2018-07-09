// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_of_the_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordOfTheDay _$WordOfTheDayFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['id']);
  return new WordOfTheDay(json['id'] as int ?? 0,
      category: json['category'] as String,
      contentProvider: json['contentProvider'] == null
          ? null
          : new ContentProvider.fromJson(
              json['contentProvider'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String,
      definitions: (json['definitions'] as List)
              ?.map((e) => e == null
                  ? null
                  : new SimpleDefinition.fromJson(e as Map<String, dynamic>))
              ?.toList() ??
          [],
      examples: (json['examples'] as List)
              ?.map((e) => e == null
                  ? null
                  : new SimpleExample.fromJson(e as Map<String, dynamic>))
              ?.toList() ??
          [],
      htmlExtra: json['htmlExtra'] as String,
      note: json['note'] as String,
      parentId: json['parentId'] as String,
      publishDate: json['publishDate'] == null
          ? null
          : DateTime.parse(json['publishDate'] as String),
      word: json['word'] as String);
}

abstract class _$WordOfTheDaySerializerMixin {
  String get category;
  ContentProvider get contentProvider;
  DateTime get createdAt;
  String get createdBy;
  List<SimpleDefinition> get definitions;
  List<SimpleExample> get examples;
  String get htmlExtra;
  int get id;
  String get note;
  String get parentId;
  DateTime get publishDate;
  String get word;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('category', category);
    writeNotNull('contentProvider', contentProvider);
    writeNotNull('createdAt', createdAt?.toIso8601String());
    writeNotNull('createdBy', createdBy);
    writeNotNull('definitions', definitions);
    writeNotNull('examples', examples);
    writeNotNull('htmlExtra', htmlExtra);
    writeNotNull('id', id);
    writeNotNull('note', note);
    writeNotNull('parentId', parentId);
    writeNotNull('publishDate', publishDate?.toIso8601String());
    writeNotNull('word', word);
    return val;
  }
}
