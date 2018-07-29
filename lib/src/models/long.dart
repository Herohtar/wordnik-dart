import 'package:json_annotation/json_annotation.dart';

part 'long.g.dart';

/// Represents an [int] value returned from the API.
///
/// Only used internally.
@JsonSerializable(includeIfNull: false)
class Long {
  /// The [value] returned from the API.
  final int value;

  /// Constructs a new [Long].
  Long(
    {
      this.value
    }
  );

  /// Constructs a new [Long] from a JSON map.
  factory Long.fromJson(Map<String, dynamic> json) => _$LongFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$LongToJson(this);
}
