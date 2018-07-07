import 'package:json_annotation/json_annotation.dart';

part 'facet_value.g.dart';

@JsonSerializable()
class FacetValue extends Object with _$FacetValueSerializerMixin {
  @JsonKey(defaultValue: 0)
  final int count;

  final String value;

  FacetValue(
    {
      this.count = 0,
      this.value
    }
  );

  factory FacetValue.fromJson(Map<String, dynamic> json) => _$FacetValueFromJson(json);
}
