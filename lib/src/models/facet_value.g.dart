// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facet_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FacetValue _$FacetValueFromJson(Map<String, dynamic> json) {
  return new FacetValue(
      count: json['count'] as int, value: json['value'] as String);
}

Map<String, dynamic> _$FacetValueToJson(FacetValue instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('value', instance.value);
  return val;
}
