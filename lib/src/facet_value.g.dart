// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facet_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FacetValue _$FacetValueFromJson(Map<String, dynamic> json) {
  return new FacetValue(
      count: json['count'] as int, value: json['value'] as String);
}

abstract class _$FacetValueSerializerMixin {
  int get count;
  String get value;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('count', count);
    writeNotNull('value', value);
    return val;
  }
}
