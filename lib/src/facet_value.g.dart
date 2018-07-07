// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facet_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FacetValue _$FacetValueFromJson(Map<String, dynamic> json) {
  return new FacetValue(
      count: json['count'] as int ?? 0, value: json['value'] as String);
}

abstract class _$FacetValueSerializerMixin {
  int get count;
  String get value;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'count': count, 'value': value};
}
