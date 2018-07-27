import 'package:json_annotation/json_annotation.dart';

part 'note.g.dart';

@JsonSerializable(includeIfNull: false)
class Note {
  @JsonKey(defaultValue: <String>[])
  final List<String> appliesTo;

  final String noteType;

  final int pos;

  final String value;

  Note(
    {
      List<String> appliesTo,
      this.noteType,
      this.pos,
      this.value
    }
  )
  : this.appliesTo = appliesTo ?? <String>[];

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$NoteToJson(this);
}
