// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Citation _$CitationFromJson(Map<String, dynamic> json) {
  return new Citation(
      cite: json['cite'] as String, source: json['source'] as String);
}

abstract class _$CitationSerializerMixin {
  String get cite;
  String get source;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'cite': cite, 'source': source};
}
