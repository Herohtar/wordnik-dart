// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordSearchResult _$WordSearchResultFromJson(Map<String, dynamic> json) {
  return new WordSearchResult(
      count: json['count'] as int,
      lexicality: (json['lexicality'] as num)?.toDouble(),
      word: json['word'] as String);
}

Map<String, dynamic> _$WordSearchResultToJson(WordSearchResult instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('lexicality', instance.lexicality);
  writeNotNull('word', instance.word);
  return val;
}
