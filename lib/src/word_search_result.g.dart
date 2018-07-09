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

abstract class _$WordSearchResultSerializerMixin {
  int get count;
  double get lexicality;
  String get word;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('count', count);
    writeNotNull('lexicality', lexicality);
    writeNotNull('word', word);
    return val;
  }
}
