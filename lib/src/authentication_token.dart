import 'package:json_annotation/json_annotation.dart';

part 'authentication_token.g.dart';

@JsonSerializable(includeIfNull: false)
class AuthenticationToken extends Object with _$AuthenticationTokenSerializerMixin {
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
}
