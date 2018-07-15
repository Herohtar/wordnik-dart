import 'package:json_annotation/json_annotation.dart';

part 'api_token_status.g.dart';

Duration _durationFromMilliseconds(int milliseconds) => Duration(milliseconds: milliseconds);
int _durationToMilliseconds(Duration duration) => duration.inMilliseconds;

//TODO: rename 'token' aspects to be more clear that it's actually for the API key?
/// Contains details associated with the given [token] (API key)
@JsonSerializable(includeIfNull: false)
class ApiTokenStatus extends Object with _$ApiTokenStatusSerializerMixin {
  /// The amount of time left until the [token] expires
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

  /// The API key these stats are associated with
  final String token;

  /// The number of API requests made since the last reset
  final int totalRequests;

  /// Whether the API key is valid
  ///
  /// This is confusing, because trying to get stats for an invalid key
  /// returns an error, so it doesn't seem possible to ever be false.
  final bool valid;

  /// Constructs a new [ApiTokenStatus]
  ApiTokenStatus(
    {
      Duration expiresIn,
      this.remainingCalls,
      Duration resetsIn,
      this.token,
      this.totalRequests,
      this.valid
    }
  )
  : this.expiresIn = expiresIn ?? Duration(seconds: 0),
    this.resetsIn = resetsIn ?? Duration(seconds: 0);

  /// Constructs a new [ApiTokenStatus] from a JSON map
  factory ApiTokenStatus.fromJson(Map<String, dynamic> json) => _$ApiTokenStatusFromJson(json);
}
