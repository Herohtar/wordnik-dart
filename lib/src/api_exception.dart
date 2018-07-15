import 'package:json_annotation/json_annotation.dart';

part 'api_exception.g.dart';

/// Thrown when a request to the API returns an error.
@JsonSerializable()
class ApiException extends Object with _$ApiExceptionSerializerMixin implements Exception {
  /// The [ApiException] type.
  final String type;

  /// The error message or other information returned from the API.
  final String message;

  /// Constructs a new [ApiException].
  ApiException(this.type, this.message);

  /// Constructs a new [ApiException] from a JSON map.
  factory ApiException.fromJson(Map<String, dynamic> json) => _$ApiExceptionFromJson(json);
}
