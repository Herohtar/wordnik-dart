import 'package:json_annotation/json_annotation.dart';

part 'api_exception.g.dart';

/// Contains the response from the API when a request fails to complete as expected.
@JsonSerializable()
class ApiException implements Exception {
  /// The type of response returned from the API. (Usually error.)
  final String type;

  /// The error message or other information returned from the API.
  final String message;

  /// Constructs a new [ApiException].
  ApiException(this.type, this.message);

  /// Constructs a new [ApiException] from a JSON map.
  factory ApiException.fromJson(Map<String, dynamic> json) => _$ApiExceptionFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$ApiExceptionToJson(this);
}
