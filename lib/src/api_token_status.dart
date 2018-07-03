import 'dart:convert';

class ApiTokenStatus {
  final int expiresInMillis;
  final int remainingCalls;
  final int resetsInMillis;
  final String token;
  final int totalRequests;
  final bool valid;

  ApiTokenStatus.fromMap(Map<String, dynamic> map)
  : expiresInMillis = map['expiresInMillis'] ?? 0,
    remainingCalls = map['remainingCalls'] ?? 0,
    resetsInMillis = map['resetsInMillis'] ?? 0,
    token = map['token'],
    totalRequests = map['totalRequests'] ?? 0,
    valid = map['valid'] ?? false;
  
  factory ApiTokenStatus.fromJson(String jsonString) {
    return ApiTokenStatus.fromMap(json.decode(jsonString));
  }
}