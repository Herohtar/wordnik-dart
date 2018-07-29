import 'package:json_annotation/json_annotation.dart';

part 'authentication_token.g.dart';

/// Contains tokens for an authenticated user.
@JsonSerializable(includeIfNull: false)
class AuthenticationToken {
  /// The [token] required for API account-specific API calls.
  final String token;

  /// The ID of the authenticated user.
  final int userId;

  /// Some sort of hash related to the authenticated user, but it's not explained
  /// anywhere and the API doesn't make use of it.
  final String userSignature;

  /// Constructs a new [AuthenticationToken].
  AuthenticationToken(
    {
      this.token,
      this.userId,
      this.userSignature
    }
  );

  /// Constructs a new [AuthenticationToken] from a JSON map.
  factory AuthenticationToken.fromJson(Map<String, dynamic> json) => _$AuthenticationTokenFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$AuthenticationTokenToJson(this);
}
