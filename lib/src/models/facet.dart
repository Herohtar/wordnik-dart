import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/models/facet_value.dart';

part 'facet.g.dart';

@JsonSerializable(includeIfNull: false)
class Facet {
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

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$FacetToJson(this);
}
