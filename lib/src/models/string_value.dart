import 'package:json_annotation/json_annotation.dart';

part 'string_value.g.dart';

/// Represents a [String] returned by the API.
///
/// Only used internally.
@JsonSerializable(includeIfNull: false)
class StringValue {
  /// The [String] returned from the API.
  final String word;

  /// Constructs a new [StringValue].
  StringValue(
    {
      this.word
    }
  );

  /// Constructs a new [StringValue] from a JSON map.
  factory StringValue.fromJson(Map<String, dynamic> json) => _$StringValueFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$StringValueToJson(this);
}
