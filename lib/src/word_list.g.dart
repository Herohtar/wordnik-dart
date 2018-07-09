// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordList _$WordListFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['name', 'type'],
      disallowNullValues: const ['name', 'type']);
  return new WordList(json['name'] as String, json['type'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      description: json['description'] as String,
      id: json['id'] as int,
      lastActivityAt: json['lastActivityAt'] == null
          ? null
          : DateTime.parse(json['lastActivityAt'] as String),
      numberWordsInList: json['numberWordsInList'] as int,
      permalink: json['permalink'] as String,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as int,
      username: json['username'] as String);
}

abstract class _$WordListSerializerMixin {
  DateTime get createdAt;
  String get description;
  int get id;
  DateTime get lastActivityAt;
  String get name;
  int get numberWordsInList;
  String get permalink;
  String get type;
  DateTime get updatedAt;
  int get userId;
  String get username;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('createdAt', createdAt?.toIso8601String());
    writeNotNull('description', description);
    writeNotNull('id', id);
    writeNotNull('lastActivityAt', lastActivityAt?.toIso8601String());
    writeNotNull('name', name);
    writeNotNull('numberWordsInList', numberWordsInList);
    writeNotNull('permalink', permalink);
    writeNotNull('type', type);
    writeNotNull('updatedAt', updatedAt?.toIso8601String());
    writeNotNull('userId', userId);
    writeNotNull('username', username);
    return val;
  }
}
