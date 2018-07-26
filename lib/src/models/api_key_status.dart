import 'package:json_annotation/json_annotation.dart';

part 'api_key_status.g.dart';

Duration _durationFromMilliseconds(int milliseconds) => Duration(milliseconds: milliseconds);
int _durationToMilliseconds(Duration duration) => duration.inMilliseconds;

/// Contains details associated with the given [apiKey].
///
/// The API docs call this `ApiTokenStatus`, but never refer to the API Key as an
/// "API token" anywhere else.
@JsonSerializable(includeIfNull: false)
class ApiKeyStatus extends Object with _$ApiKeyStatusSerializerMixin {
  /// The amount of time left until the [apiKey] expires
  @JsonKey(
    name: 'expiresInMillis',
    fromJson: _durationFromMilliseconds,
    toJson: _durationToMilliseconds
  )
  final Duration expiresIn;

  /// The number of API calls remaining before the next reset
  final int remainingCalls;

  /// The amount of time left until the API call counts reset
  @JsonKey(
    name: 'resetsInMillis',
    fromJson: _durationFromMilliseconds,
    toJson: _durationToMilliseconds
  )
  final Duration resetsIn;

  /// The [apiKey] these stats are associated with
  @JsonKey(name: 'token')
  final String apiKey;

  /// The number of API requests made since the last reset
  final int totalRequests;

  /// Whether the [apiKey] is valid
  ///
  /// This is confusing, because trying to get stats for an invalid key
  /// returns an error, so it doesn't seem possible to ever be false.
  final bool valid;

  /// Constructs a new [ApiKeyStatus]
  ApiKeyStatus(
    {
      Duration expiresIn,
      this.remainingCalls,
      Duration resetsIn,
      this.apiKey,
      this.totalRequests,
      this.valid
    }
  )
  : this.expiresIn = expiresIn ?? Duration(seconds: 0),
    this.resetsIn = resetsIn ?? Duration(seconds: 0);

  /// Constructs a new [ApiKeyStatus] from a JSON map
  factory ApiKeyStatus.fromJson(Map<String, dynamic> json) => _$ApiKeyStatusFromJson(json);
}
