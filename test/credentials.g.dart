// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Credentials _$CredentialsFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['api_key']);
  return new Credentials(json['api_key'] as String,
      username: json['username'] as String,
      password: json['password'] as String);
}

abstract class _$CredentialsSerializerMixin {
  String get apiKey;
  String get username;
  String get password;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('api_key', apiKey);
    writeNotNull('username', username);
    writeNotNull('password', password);
    return val;
  }
}
