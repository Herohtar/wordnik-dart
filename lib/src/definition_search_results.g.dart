// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'definition_search_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefinitionSearchResults _$DefinitionSearchResultsFromJson(
    Map<String, dynamic> json) {
  return new DefinitionSearchResults(
      results: (json['results'] as List)
              ?.map((e) => e == null
                  ? null
                  : new Definition.fromJson(e as Map<String, dynamic>))
              ?.toList() ??
          [],
      totalResults: json['totalResults'] as int);
}

abstract class _$DefinitionSearchResultsSerializerMixin {
  List<Definition> get results;
  int get totalResults;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'results': results, 'totalResults': totalResults};
}
