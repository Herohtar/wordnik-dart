import 'package:json_annotation/json_annotation.dart';

part 'frequency.g.dart';

@JsonSerializable(includeIfNull: false)
class Frequency extends Object with _$FrequencySerializerMixin {
  final int count;

  final int year;

  Frequency(
    {
      this.count,
      this.year
    }
  );

  factory Frequency.fromJson(Map<String, dynamic> json) => _$FrequencyFromJson(json);
}
