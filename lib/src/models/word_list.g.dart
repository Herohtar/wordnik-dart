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

Map<String, dynamic> _$WordListToJson(WordList instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('description', instance.description);
  writeNotNull('id', instance.id);
  writeNotNull('lastActivityAt', instance.lastActivityAt?.toIso8601String());
  writeNotNull('name', instance.name);
  writeNotNull('numberWordsInList', instance.numberWordsInList);
  writeNotNull('permalink', instance.permalink);
  writeNotNull('type', instance.type);
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('userId', instance.userId);
  writeNotNull('username', instance.username);
  return val;
}
