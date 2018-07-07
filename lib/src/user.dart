import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Object with _$UserSerializerMixin {
  final String displayName;

  final String email;

  final String faceBookId;

  @JsonKey(defaultValue: 0)
  final int id;

  final String password;

  @JsonKey(defaultValue: 0)
  final int status;

  final String userName;

  final String username; // API lists both of these, and it does indeed return like this;
                         // however, the value of both seems to be identical to displayName

  User(
    {
      this.displayName,
      this.email,
      this.faceBookId,
      this.id = 0,
      this.password,
      this.status = 0,
      this.userName,
      this.username
    }
  );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
