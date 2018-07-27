import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/models/example.dart';
import 'package:wordnik/src/models/facet.dart';

part 'example_search_results.g.dart';

@JsonSerializable(includeIfNull: false)
class ExampleSearchResults {
  @JsonKey(defaultValue: <Example>[])
  final List<Example> examples;

  @JsonKey(defaultValue: <Facet>[])
  final List<Facet> facets;

  ExampleSearchResults(
    {
      List<Example> examples,
      List<Facet> facets
    }
  )
  : this.examples = examples ?? <Example>[],
    this.facets = facets ?? <Facet>[];

  factory ExampleSearchResults.fromJson(Map<String, dynamic> json) => _$ExampleSearchResultsFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$ExampleSearchResultsToJson(this);
}
