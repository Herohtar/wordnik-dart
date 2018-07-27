// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Citation _$CitationFromJson(Map<String, dynamic> json) {
  return new Citation(
      cite: json['cite'] as String, source: json['source'] as String);
}

Map<String, dynamic> _$CitationToJson(Citation instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cite', instance.cite);
  writeNotNull('source', instance.source);
  return val;
}
