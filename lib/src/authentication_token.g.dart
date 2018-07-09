// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationToken _$AuthenticationTokenFromJson(Map<String, dynamic> json) {
  return new AuthenticationToken(
      token: json['token'] as String,
      userId: json['userId'] as int,
      userSignature: json['userSignature'] as String);
}

abstract class _$AuthenticationTokenSerializerMixin {
  String get token;
  int get userId;
  String get userSignature;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('token', token);
    writeNotNull('userId', userId);
    writeNotNull('userSignature', userSignature);
    return val;
  }
}
