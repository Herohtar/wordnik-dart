// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordSearchResult _$WordSearchResultFromJson(Map<String, dynamic> json) {
  return new WordSearchResult(
      count: json['count'] as int ?? 0,
      lexicality: (json['lexicality'] as num)?.toDouble() ?? 0.0,
      word: json['word'] as String);
}

abstract class _$WordSearchResultSerializerMixin {
  int get count;
  double get lexicality;
  String get word;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'count': count, 'lexicality': lexicality, 'word': word};
}
