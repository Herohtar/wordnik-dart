import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(includeIfNull: false)
class User {
  final String displayName;

  final String email;

  final String faceBookId;

  final int id;

  final String password;

  final int status;

  final String userName;

  final String username; // API lists both of these, and it does indeed return like this;
                         // however, the value of both seems to be identical to displayName

  User(
    {
      this.displayName,
      this.email,
      this.faceBookId,
      this.id,
      this.password,
      this.status,
      this.userName,
      this.username
    }
  );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
