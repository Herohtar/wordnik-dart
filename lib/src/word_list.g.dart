// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordList _$WordListFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['name', 'type'],
      disallowNullValues: const ['name', 'type']);
  return new WordList(
      json['name'] as String, json['type'] as String ?? 'PRIVATE',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      description: json['description'] as String,
      id: json['id'] as int ?? 0,
      lastActivityAt: json['lastActivityAt'] == null
          ? null
          : DateTime.parse(json['lastActivityAt'] as String),
      numberWordsInList: json['numberWordsInList'] as int ?? 0,
      permalink: json['permalink'] as String,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as int ?? 0,
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
    var val = <String, dynamic>{
      'createdAt': createdAt?.toIso8601String(),
      'description': description,
      'id': id,
      'lastActivityAt': lastActivityAt?.toIso8601String(),
    };

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('name', name);
    val['numberWordsInList'] = numberWordsInList;
    val['permalink'] = permalink;
    writeNotNull('type', type);
    val['updatedAt'] = updatedAt?.toIso8601String();
    val['userId'] = userId;
    val['username'] = username;
    return val;
  }
}
