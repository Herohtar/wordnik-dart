import 'dart:convert';

import 'package:wordnik/src/example.dart';
import 'package:wordnik/src/facet.dart';

class ExampleSearchResults {
  final List<Facet> facets;
  final List<Example> examples;

  ExampleSearchResults.fromMap(Map<String, dynamic> map)
  : facets = map['facets']?.map((facet) => Facet.fromMap(facet))?.toList() ?? <Facet>[],
    examples = map['examples']?.map((example) => Example.fromMap(example))?.toList() ?? <Example>[];

  factory ExampleSearchResults.fromJson(String jsonString) {
    return ExampleSearchResults.fromMap(json.decode(jsonString));
  }
}
