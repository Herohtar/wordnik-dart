import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/word_search_result.dart';

part 'word_search_results.g.dart';

@JsonSerializable()
class WordSearchResults extends Object with _$WordSearchResultsSerializerMixin {
  @JsonKey(defaultValue: <WordSearchResult>[])
  final List<WordSearchResult> searchResults;

  @JsonKey(defaultValue: 0)
  final int totalResults;

  WordSearchResults(
    {
      List<WordSearchResult> searchResults,
      this.totalResults = 0
    }
  )
  : this.searchResults = searchResults ?? <WordSearchResult>[];

  factory WordSearchResults.fromJson(Map<String, dynamic> json) => _$WordSearchResultsFromJson(json);
}
