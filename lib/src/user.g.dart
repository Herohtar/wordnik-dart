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

abstract class _$UserSerializerMixin {
  String get displayName;
  String get email;
  String get faceBookId;
  int get id;
  String get password;
  int get status;
  String get userName;
  String get username;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('displayName', displayName);
    writeNotNull('email', email);
    writeNotNull('faceBookId', faceBookId);
    writeNotNull('id', id);
    writeNotNull('password', password);
    writeNotNull('status', status);
    writeNotNull('userName', userName);
    writeNotNull('username', username);
    return val;
  }
}
