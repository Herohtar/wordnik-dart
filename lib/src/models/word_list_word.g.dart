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

Map<String, dynamic> _$WordListWordToJson(WordListWord instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('id', instance.id);
  writeNotNull('numberCommentsOnWord', instance.numberCommentsOnWord);
  writeNotNull('numberLists', instance.numberLists);
  writeNotNull('userId', instance.userId);
  writeNotNull('username', instance.username);
  writeNotNull('word', instance.word);
  return val;
}
