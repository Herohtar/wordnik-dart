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

Map<String, dynamic> _$SyllableToJson(Syllable instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('text', instance.text);
  writeNotNull('type', instance.type);
  return val;
}
