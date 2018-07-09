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

abstract class _$NoteSerializerMixin {
  List<String> get appliesTo;
  String get noteType;
  int get pos;
  String get value;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('appliesTo', appliesTo);
    writeNotNull('noteType', noteType);
    writeNotNull('pos', pos);
    writeNotNull('value', value);
    return val;
  }
}
