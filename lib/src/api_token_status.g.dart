// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_token_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiTokenStatus _$ApiTokenStatusFromJson(Map<String, dynamic> json) {
  return new ApiTokenStatus(
      expiresIn: json['expiresInMillis'] == null
          ? null
          : _durationFromMilliseconds(json['expiresInMillis'] as int),
      remainingCalls: json['remainingCalls'] as int ?? 0,
      resetsIn: json['resetsInMillis'] == null
          ? null
          : _durationFromMilliseconds(json['resetsInMillis'] as int),
      token: json['token'] as String,
      totalRequests: json['totalRequests'] as int ?? 0,
      valid: json['valid'] as bool ?? false);
}

abstract class _$ApiTokenStatusSerializerMixin {
  Duration get expiresIn;
  int get remainingCalls;
  Duration get resetsIn;
  String get token;
  int get totalRequests;
  bool get valid;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'expiresInMillis':
            expiresIn == null ? null : _durationToMilliseconds(expiresIn),
        'remainingCalls': remainingCalls,
        'resetsInMillis':
            resetsIn == null ? null : _durationToMilliseconds(resetsIn),
        'token': token,
        'totalRequests': totalRequests,
        'valid': valid
      };
}
