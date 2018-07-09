import 'package:json_annotation/json_annotation.dart';

part 'facet_value.g.dart';

@JsonSerializable(includeIfNull: false)
class FacetValue extends Object with _$FacetValueSerializerMixin {
  final int count;

  final String value;

  FacetValue(
    {
      this.count,
      this.value
    }
  );

  factory FacetValue.fromJson(Map<String, dynamic> json) => _$FacetValueFromJson(json);
}
