import 'package:json_annotation/json_annotation.dart';

part 'string_value.g.dart';

@JsonSerializable(includeIfNull: false)
class StringValue {
  final String word;

  StringValue(
    {
      this.word
    }
  );

  factory StringValue.fromJson(Map<String, dynamic> json) => _$StringValueFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$StringValueToJson(this);
}
