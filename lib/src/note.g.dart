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
      pos: json['pos'] as int ?? 0,
      value: json['value'] as String);
}

abstract class _$NoteSerializerMixin {
  List<String> get appliesTo;
  String get noteType;
  int get pos;
  String get value;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'appliesTo': appliesTo,
        'noteType': noteType,
        'pos': pos,
        'value': value
      };
}
