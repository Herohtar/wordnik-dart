import 'package:json_annotation/json_annotation.dart';

part 'word_search_result.g.dart';

@JsonSerializable(includeIfNull: false)
class WordSearchResult extends Object with _$WordSearchResultSerializerMixin {
  final int count;

  final double lexicality;

  final String word;

  WordSearchResult(
    {
      this.count,
      this.lexicality,
      this.word
    }
  );

  factory WordSearchResult.fromJson(Map<String, dynamic> json) => _$WordSearchResultFromJson(json);
}
