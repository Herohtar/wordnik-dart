// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'syllable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Syllable _$SyllableFromJson(Map<String, dynamic> json) {
  return new Syllable(
      seq: json['seq'] as int,
      text: json['text'] as String,
      type: json['type'] as String);
}

abstract class _$SyllableSerializerMixin {
  int get seq;
  String get text;
  String get type;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('seq', seq);
    writeNotNull('text', text);
    writeNotNull('type', type);
    return val;
  }
}
