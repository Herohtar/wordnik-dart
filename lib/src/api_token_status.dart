import 'dart:convert';

class ApiTokenStatus {
  final Duration expiresIn;
  final int remainingCalls;
  final Duration resetsIn;
  final String token;
  final int totalRequests;
  final bool valid;

  ApiTokenStatus.fromMap(Map<String, dynamic> map)
  : expiresIn = Duration(milliseconds: map['expiresInMillis'] ?? 0),
    remainingCalls = map['remainingCalls'] ?? 0,
    resetsIn = Duration(milliseconds: map['resetsInMillis'] ?? 0),
    token = map['token'],
    totalRequests = map['totalRequests'] ?? 0,
    valid = map['valid'] ?? false;

  factory ApiTokenStatus.fromJson(String jsonString) {
    return ApiTokenStatus.fromMap(json.decode(jsonString));
  }
}
