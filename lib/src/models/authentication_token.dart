import 'package:json_annotation/json_annotation.dart';

part 'authentication_token.g.dart';

@JsonSerializable(includeIfNull: false)
class AuthenticationToken {
  final String token;

  final int userId;

  final String userSignature;

  AuthenticationToken(
    {
      this.token,
      this.userId,
      this.userSignature
    }
  );

  factory AuthenticationToken.fromJson(Map<String, dynamic> json) => _$AuthenticationTokenFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$AuthenticationTokenToJson(this);
}
