// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Note _$NoteFromJson(Map<String, dynamic> json) {
  return new Note(
      appliesTo:
          (json['appliesTo'] as List)?.map((e) => e as String)?.toList() ?? [],
      noteType: json['noteType'] as String,
      pos: json['pos'] as int,
      value: json['value'] as String);
}

Map<String, dynamic> _$NoteToJson(Note instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('appliesTo', instance.appliesTo);
  writeNotNull('noteType', instance.noteType);
  writeNotNull('pos', instance.pos);
  writeNotNull('value', instance.value);
  return val;
}
