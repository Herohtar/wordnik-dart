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

abstract class _$ApiKeyStatusSerializerMixin {
  Duration get expiresIn;
  int get remainingCalls;
  Duration get resetsIn;
  String get apiKey;
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
    writeNotNull('token', apiKey);
    writeNotNull('totalRequests', totalRequests);
    writeNotNull('valid', valid);
    return val;
  }
}
