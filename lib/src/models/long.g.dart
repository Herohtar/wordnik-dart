// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'long.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Long _$LongFromJson(Map<String, dynamic> json) {
  return new Long(value: json['value'] as int);
}

Map<String, dynamic> _$LongToJson(Long instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  return val;
}
