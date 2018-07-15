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

abstract class _$TextPronSerializerMixin {
  String get raw;
  String get rawType;
  int get seq;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('raw', raw);
    writeNotNull('rawType', rawType);
    writeNotNull('seq', seq);
    return val;
  }
}
