import 'package:json_annotation/json_annotation.dart';

part 'api_token_status.g.dart';

Duration _durationFromMilliseconds(int milliseconds) => Duration(milliseconds: milliseconds);
int _durationToMilliseconds(Duration duration) => duration.inMilliseconds;

@JsonSerializable(includeIfNull: false)
class ApiTokenStatus extends Object with _$ApiTokenStatusSerializerMixin {
  @JsonKey(
    name: 'expiresInMillis',
    fromJson: _durationFromMilliseconds,
    toJson: _durationToMilliseconds
  )
  final Duration expiresIn;

  final int remainingCalls;

  @JsonKey(
    name: 'resetsInMillis',
    fromJson: _durationFromMilliseconds,
    toJson: _durationToMilliseconds
  )
  final Duration resetsIn;

  final String token;

  final int totalRequests;

  final bool valid;

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

  factory ApiTokenStatus.fromJson(Map<String, dynamic> json) => _$ApiTokenStatusFromJson(json);
}
