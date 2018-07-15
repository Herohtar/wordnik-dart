import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/models/definition.dart';

part 'definition_search_results.g.dart';

@JsonSerializable(includeIfNull: false)
class DefinitionSearchResults extends Object with _$DefinitionSearchResultsSerializerMixin {
  @JsonKey(defaultValue: <Definition>[])
  final List<Definition> results;

  final int totalResults;

  DefinitionSearchResults(
    {
      List<Definition> results,
      this.totalResults
    }
  )
  : this.results = results ?? <Definition>[];

  factory DefinitionSearchResults.fromJson(Map<String, dynamic> json) => _$DefinitionSearchResultsFromJson(json);
}
