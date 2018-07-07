import 'package:json_annotation/json_annotation.dart';

part 'word_search_result.g.dart';

@JsonSerializable()
class WordSearchResult extends Object with _$WordSearchResultSerializerMixin {
  @JsonKey(defaultValue: 0)
  final int count;

  @JsonKey(defaultValue: 0.0)
  final double lexicality;

  final String word;

  WordSearchResult(
    {
      this.count = 0,
      this.lexicality = 0.0,
      this.word
    }
  );

  factory WordSearchResult.fromJson(Map<String, dynamic> json) => _$WordSearchResultFromJson(json);
}
