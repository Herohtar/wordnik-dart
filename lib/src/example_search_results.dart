import 'dart:convert';

import 'package:wordnik/src/example.dart';
import 'package:wordnik/src/facet.dart';

class ExampleSearchResults {
  final List<Example> examples;
  final List<Facet> facets;

  ExampleSearchResults.fromMap(Map<String, dynamic> map)
  : examples = map['examples']?.map((example) => Example.fromMap(example))?.toList() ?? <Example>[],
    facets = map['facets']?.map((facet) => Facet.fromMap(facet))?.toList() ?? <Facet>[];

  factory ExampleSearchResults.fromJson(String jsonString) {
    return ExampleSearchResults.fromMap(json.decode(jsonString));
  }
}
