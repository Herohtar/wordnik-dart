import 'dart:convert';

import 'package:wordnik/src/word_search_result.dart';

class WordSearchResults {
  final List<WordSearchResult> searchResults;
  final int totalResults;

  WordSearchResults.fromMap(Map<String, dynamic> map)
  : searchResults = map['searchResults']?.map<WordSearchResult>((result) => WordSearchResult.fromMap(result))?.toList() ?? <WordSearchResult>[],
    totalResults = map['totalResults'] ?? 0;

  factory WordSearchResults.fromJson(String jsonString) {
    return WordSearchResults.fromMap(json.decode(jsonString));
  }
}
