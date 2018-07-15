// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_list_word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordListWord _$WordListWordFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['id']);
  return new WordListWord(json['id'] as int ?? 0,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      numberCommentsOnWord: json['numberCommentsOnWord'] as int,
      numberLists: json['numberLists'] as int,
      userId: json['userId'] as int,
      username: json['username'] as String,
      word: json['word'] as String);
}

abstract class _$WordListWordSerializerMixin {
  DateTime get createdAt;
  int get id;
  int get numberCommentsOnWord;
  int get numberLists;
  int get userId;
  String get username;
  String get word;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('createdAt', createdAt?.toIso8601String());
    writeNotNull('id', id);
    writeNotNull('numberCommentsOnWord', numberCommentsOnWord);
    writeNotNull('numberLists', numberLists);
    writeNotNull('userId', userId);
    writeNotNull('username', username);
    writeNotNull('word', word);
    return val;
  }
}
