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

Map<String, dynamic> _$AuthenticationTokenToJson(AuthenticationToken instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token', instance.token);
  writeNotNull('userId', instance.userId);
  writeNotNull('userSignature', instance.userSignature);
  return val;
}
