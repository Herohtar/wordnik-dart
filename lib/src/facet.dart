import 'dart:convert';

import 'package:wordnik/src/facet_value.dart';

class Facet {
  final List<FacetValue> facetValues;
  final String name;

  Facet.fromMap(Map<String, dynamic> map)
  : facetValues = map['facetValues']?.map<Facet>((facet) => Facet.fromMap(facet))?.toList() ?? <FacetValue>[],
    name = map['name'];

  factory Facet.fromJson(String jsonString) {
    return Facet.fromMap(json.decode(jsonString));
  }
}
