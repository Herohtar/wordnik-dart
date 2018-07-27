// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_pron.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextPron _$TextPronFromJson(Map<String, dynamic> json) {
  return new TextPron(
      raw: json['raw'] as String,
      rawType: json['rawType'] as String,
      seq: json['seq'] as int);
}

Map<String, dynamic> _$TextPronToJson(TextPron instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('raw', instance.raw);
  writeNotNull('rawType', instance.rawType);
  writeNotNull('seq', instance.seq);
  return val;
}
