import 'package:json_annotation/json_annotation.dart';

part 'facet_value.g.dart';

@JsonSerializable(includeIfNull: false)
class FacetValue {
  final int count;

  final String value;

  FacetValue(
    {
      this.count,
      this.value
    }
  );

  factory FacetValue.fromJson(Map<String, dynamic> json) => _$FacetValueFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$FacetValueToJson(this);
}
