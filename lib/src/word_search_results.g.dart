// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_search_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordSearchResults _$WordSearchResultsFromJson(Map<String, dynamic> json) {
  return new WordSearchResults(
      searchResults: (json['searchResults'] as List)
              ?.map((e) => e == null
                  ? null
                  : new WordSearchResult.fromJson(e as Map<String, dynamic>))
              ?.toList() ??
          [],
      totalResults: json['totalResults'] as int);
}

abstract class _$WordSearchResultsSerializerMixin {
  List<WordSearchResult> get searchResults;
  int get totalResults;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('searchResults', searchResults);
    writeNotNull('totalResults', totalResults);
    return val;
  }
}
