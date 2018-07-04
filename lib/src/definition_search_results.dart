import 'dart:convert';

import 'package:wordnik/src/definition.dart';

class DefinitionSearchResults {
  final List<Definition> results;
  final int totalResults;

  DefinitionSearchResults.fromMap(Map<String, dynamic> map)
  : results = map['results']?.map<Definition>((result) => Definition.fromMap(result))?.toList() ?? <Definition>[],
    totalResults = map['totalResults'] ?? 0;

  factory DefinitionSearchResults.fromJson(String jsonString) {
    return DefinitionSearchResults.fromMap(json.decode(jsonString));
  }
}
