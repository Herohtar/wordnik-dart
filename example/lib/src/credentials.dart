import 'dart:convert';
import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'credentials.g.dart';

@JsonSerializable(includeIfNull: false)
class Credentials extends Object with _$CredentialsSerializerMixin {
  @JsonKey(name: 'api_key', required: true)
  final String apiKey;

  final String username;

  final String password;

  Credentials(
    this.apiKey,
    {
      this.username,
      this.password
    }
  );

  factory Credentials.fromJson(Map<String, dynamic> json) => _$CredentialsFromJson(json);

  factory Credentials.fromFile(String fileName) {
    return Credentials.fromJson(json.decode(File(fileName).readAsStringSync()));
  }
}
