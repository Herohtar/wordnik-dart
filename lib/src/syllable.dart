import 'package:json_annotation/json_annotation.dart';

part 'syllable.g.dart';

@JsonSerializable()
class Syllable extends Object with _$SyllableSerializerMixin {
  @JsonKey(defaultValue: 0)
  final int seq;

  final String text;

  final String type;

  Syllable(
    {
      this.seq = 0,
      this.text,
      this.type
    }
  );

  factory Syllable.fromJson(Map<String, dynamic> json) => _$SyllableFromJson(json);
}
