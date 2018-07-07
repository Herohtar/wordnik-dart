import 'package:json_annotation/json_annotation.dart';

part 'api_token_status.g.dart';

Duration _durationFromMilliseconds(int milliseconds) => Duration(milliseconds: milliseconds);
int _durationToMilliseconds(Duration duration) => duration.inMilliseconds;

@JsonSerializable()
class ApiTokenStatus extends Object with _$ApiTokenStatusSerializerMixin {
  @JsonKey(
    name: 'expiresInMillis',
    fromJson: _durationFromMilliseconds,
    toJson: _durationToMilliseconds
  )
  final Duration expiresIn;

  @JsonKey(defaultValue: 0)
  final int remainingCalls;

  @JsonKey(
    name: 'resetsInMillis',
    fromJson: _durationFromMilliseconds,
    toJson: _durationToMilliseconds
  )
  final Duration resetsIn;

  final String token;

  @JsonKey(defaultValue: 0)
  final int totalRequests;

  @JsonKey(defaultValue: false)
  final bool valid;

  ApiTokenStatus(
    {
      Duration expiresIn,
      this.remainingCalls = 0,
      Duration resetsIn,
      this.token,
      this.totalRequests = 0,
      this.valid = false
    }
  )
  : this.expiresIn = expiresIn ?? Duration(seconds: 0),
    this.resetsIn = resetsIn ?? Duration(seconds: 0);

  factory ApiTokenStatus.fromJson(Map<String, dynamic> json) => _$ApiTokenStatusFromJson(json);
}
