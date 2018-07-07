// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'syllable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Syllable _$SyllableFromJson(Map<String, dynamic> json) {
  return new Syllable(
      seq: json['seq'] as int ?? 0,
      text: json['text'] as String,
      type: json['type'] as String);
}

abstract class _$SyllableSerializerMixin {
  int get seq;
  String get text;
  String get type;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'seq': seq, 'text': text, 'type': type};
}
