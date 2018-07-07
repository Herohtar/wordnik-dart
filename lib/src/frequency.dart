import 'package:json_annotation/json_annotation.dart';

part 'frequency.g.dart';

@JsonSerializable()
class Frequency extends Object with _$FrequencySerializerMixin {
  @JsonKey(defaultValue: 0)
  final int count;

  @JsonKey(defaultValue: 0)
  final int year;

  Frequency(
    {
      this.count = 0,
      this.year = 0
    }
  );

  factory Frequency.fromJson(Map<String, dynamic> json) => _$FrequencyFromJson(json);
}
