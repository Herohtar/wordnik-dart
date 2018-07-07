import 'package:json_annotation/json_annotation.dart';

part 'note.g.dart';

@JsonSerializable()
class Note extends Object with _$NoteSerializerMixin {
  @JsonKey(defaultValue: <String>[])
  final List<String> appliesTo;

  final String noteType;

  @JsonKey(defaultValue: 0)
  final int pos;

  final String value;

  Note(
    {
      List<String> appliesTo,
      this.noteType,
      this.pos = 0,
      this.value
    }
  )
  : this.appliesTo = appliesTo ?? <String>[];

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}
