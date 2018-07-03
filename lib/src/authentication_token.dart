import 'dart:convert';

class AuthenticationToken {
  final String token;
  final int userId;
  final String userSignature;

  AuthenticationToken.fromMap(Map<String, dynamic> map)
  : token = map['token'],
    userId = map['userId'] ?? 0,
    userSignature = map['userSignature'];

  factory AuthenticationToken.fromJson(String jsonString) {
    return AuthenticationToken.fromMap(json.decode(jsonString));
  }
}
