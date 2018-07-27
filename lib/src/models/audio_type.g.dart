// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AudioType _$AudioTypeFromJson(Map<String, dynamic> json) {
  return new AudioType(id: json['id'] as int, name: json['name'] as String);
}

Map<String, dynamic> _$AudioTypeToJson(AudioType instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  return val;
}
