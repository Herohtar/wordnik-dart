import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/facet_value.dart';

part 'facet.g.dart';

@JsonSerializable()
class Facet extends Object with _$FacetSerializerMixin {
  @JsonKey(defaultValue: <FacetValue>[])
  final List<FacetValue> facetValues;

  final String name;

  Facet(
    {
      List<FacetValue> facetValues,
      this.name
    }
  )
  : this.facetValues = facetValues ?? <FacetValue>[];

  factory Facet.fromJson(Map<String, dynamic> json) => _$FacetFromJson(json);
}
