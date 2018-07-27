import 'package:json_annotation/json_annotation.dart';

part 'syllable.g.dart';

@JsonSerializable(includeIfNull: false)
class Syllable {
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

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$SyllableToJson(this);
}
