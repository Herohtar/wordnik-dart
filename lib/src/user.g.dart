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
      id: json['id'] as int ?? 0,
      password: json['password'] as String,
      status: json['status'] as int ?? 0,
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
  Map<String, dynamic> toJson() => <String, dynamic>{
        'displayName': displayName,
        'email': email,
        'faceBookId': faceBookId,
        'id': id,
        'password': password,
        'status': status,
        'userName': userName,
        'username': username
      };
}
