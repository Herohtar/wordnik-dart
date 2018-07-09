// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AudioType _$AudioTypeFromJson(Map<String, dynamic> json) {
  return new AudioType(id: json['id'] as int, name: json['name'] as String);
}

abstract class _$AudioTypeSerializerMixin {
  int get id;
  String get name;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('id', id);
    writeNotNull('name', name);
    return val;
  }
}
