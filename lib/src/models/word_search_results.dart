import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/models/word_search_result.dart';

part 'word_search_results.g.dart';

@JsonSerializable(includeIfNull: false)
class WordSearchResults extends Object with _$WordSearchResultsSerializerMixin {
  @JsonKey(defaultValue: <WordSearchResult>[])
  final List<WordSearchResult> searchResults;

  final int totalResults;

  WordSearchResults(
    {
      List<WordSearchResult> searchResults,
      this.totalResults
    }
  )
  : this.searchResults = searchResults ?? <WordSearchResult>[];

  factory WordSearchResults.fromJson(Map<String, dynamic> json) => _$WordSearchResultsFromJson(json);
}
