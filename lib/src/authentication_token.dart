import 'package:json_annotation/json_annotation.dart';

part 'authentication_token.g.dart';

@JsonSerializable()
class AuthenticationToken extends Object with _$AuthenticationTokenSerializerMixin {
  final String token;

  @JsonKey(defaultValue: 0)
  final int userId;

  final String userSignature;

  AuthenticationToken(
    {
      this.token,
      this.userId = 0,
      this.userSignature
    }
  );

  factory AuthenticationToken.fromJson(Map<String, dynamic> json) => _$AuthenticationTokenFromJson(json);
}
