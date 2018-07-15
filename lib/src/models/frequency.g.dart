// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Frequency _$FrequencyFromJson(Map<String, dynamic> json) {
  return new Frequency(count: json['count'] as int, year: json['year'] as int);
}

abstract class _$FrequencySerializerMixin {
  int get count;
  int get year;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('count', count);
    writeNotNull('year', year);
    return val;
  }
}
