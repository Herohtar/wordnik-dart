// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiKeyStatus _$ApiKeyStatusFromJson(Map<String, dynamic> json) {
  return new ApiKeyStatus(
      expiresIn: json['expiresInMillis'] == null
          ? null
          : _durationFromMilliseconds(json['expiresInMillis'] as int),
      remainingCalls: json['remainingCalls'] as int,
      resetsIn: json['resetsInMillis'] == null
          ? null
          : _durationFromMilliseconds(json['resetsInMillis'] as int),
      apiKey: json['token'] as String,
      totalRequests: json['totalRequests'] as int,
      valid: json['valid'] as bool);
}

Map<String, dynamic> _$ApiKeyStatusToJson(ApiKeyStatus instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'expiresInMillis',
      instance.expiresIn == null
          ? null
          : _durationToMilliseconds(instance.expiresIn));
  writeNotNull('remainingCalls', instance.remainingCalls);
  writeNotNull(
      'resetsInMillis',
      instance.resetsIn == null
          ? null
          : _durationToMilliseconds(instance.resetsIn));
  writeNotNull('token', instance.apiKey);
  writeNotNull('totalRequests', instance.totalRequests);
  writeNotNull('valid', instance.valid);
  return val;
}
