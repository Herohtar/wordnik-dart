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
      remainingCalls: json['remainingCalls'] as int,
      resetsIn: json['resetsInMillis'] == null
          ? null
          : _durationFromMilliseconds(json['resetsInMillis'] as int),
      token: json['token'] as String,
      totalRequests: json['totalRequests'] as int,
      valid: json['valid'] as bool);
}

abstract class _$ApiTokenStatusSerializerMixin {
  Duration get expiresIn;
  int get remainingCalls;
  Duration get resetsIn;
  String get token;
  int get totalRequests;
  bool get valid;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('expiresInMillis',
        expiresIn == null ? null : _durationToMilliseconds(expiresIn));
    writeNotNull('remainingCalls', remainingCalls);
    writeNotNull('resetsInMillis',
        resetsIn == null ? null : _durationToMilliseconds(resetsIn));
    writeNotNull('token', token);
    writeNotNull('totalRequests', totalRequests);
    writeNotNull('valid', valid);
    return val;
  }
}
