import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/example.dart';
import 'package:wordnik/src/facet.dart';

part 'example_search_results.g.dart';

@JsonSerializable()
class ExampleSearchResults extends Object with _$ExampleSearchResultsSerializerMixin {
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
}
