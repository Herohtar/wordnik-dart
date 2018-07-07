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
      numberCommentsOnWord: json['numberCommentsOnWord'] as int ?? 0,
      numberLists: json['numberLists'] as int ?? 0,
      userId: json['userId'] as int ?? 0,
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
  Map<String, dynamic> toJson() => <String, dynamic>{
        'createdAt': createdAt?.toIso8601String(),
        'id': id,
        'numberCommentsOnWord': numberCommentsOnWord,
        'numberLists': numberLists,
        'userId': userId,
        'username': username,
        'word': word
      };
}
