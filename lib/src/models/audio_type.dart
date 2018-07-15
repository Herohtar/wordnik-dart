import 'package:json_annotation/json_annotation.dart';

part 'audio_type.g.dart';

@JsonSerializable(includeIfNull: false)
class AudioType extends Object with _$AudioTypeSerializerMixin {
  final int id;

  final String name;

  AudioType(
    {
      this.id,
      this.name
    }
  );

  factory AudioType.fromJson(Map<String, dynamic> json) => _$AudioTypeFromJson(json);
}
