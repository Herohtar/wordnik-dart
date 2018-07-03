import 'dart:convert';

class User {
  final String displayName;
  final String email;
  final String faceBookId;
  final int id;
  final String password;
  final int status;
  final String userName;
  final String username; // TODO: API lists this twice, but it's probably wrong

  User.fromMap(Map<String, dynamic> map)
  : displayName = map['displayName'],
    email = map['email'],
    faceBookId = map['faceBookId'],
    id = map['id'] ?? 0,
    password = map['password'],
    status = map['status'] ?? 0,
    userName = map['userName'],
    username = map['username'];
  
  factory User.fromJson(String jsonString) {
    return User.fromMap(json.decode(jsonString));
  }
}