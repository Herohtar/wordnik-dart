// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return new User(
      displayName: json['displayName'] as String,
      email: json['email'] as String,
      faceBookId: json['faceBookId'] as String,
      id: json['id'] as int,
      password: json['password'] as String,
      status: json['status'] as int,
      userName: json['userName'] as String,
      username: json['username'] as String);
}

Map<String, dynamic> _$UserToJson(User instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('displayName', instance.displayName);
  writeNotNull('email', instance.email);
  writeNotNull('faceBookId', instance.faceBookId);
  writeNotNull('id', instance.id);
  writeNotNull('password', instance.password);
  writeNotNull('status', instance.status);
  writeNotNull('userName', instance.userName);
  writeNotNull('username', instance.username);
  return val;
}
