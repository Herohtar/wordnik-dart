// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Frequency _$FrequencyFromJson(Map<String, dynamic> json) {
  return new Frequency(count: json['count'] as int, year: json['year'] as int);
}

Map<String, dynamic> _$FrequencyToJson(Frequency instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('year', instance.year);
  return val;
}
