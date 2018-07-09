import 'package:json_annotation/json_annotation.dart';

part 'syllable.g.dart';

@JsonSerializable(includeIfNull: false)
class Syllable extends Object with _$SyllableSerializerMixin {
  final int seq;

  final String text;

  final String type;

  Syllable(
    {
      this.seq,
      this.text,
      this.type
    }
  );

  factory Syllable.fromJson(Map<String, dynamic> json) => _$SyllableFromJson(json);
}
