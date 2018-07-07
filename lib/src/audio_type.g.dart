// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AudioType _$AudioTypeFromJson(Map<String, dynamic> json) {
  return new AudioType(
      id: json['id'] as int ?? 0, name: json['name'] as String);
}

abstract class _$AudioTypeSerializerMixin {
  int get id;
  String get name;
  Map<String, dynamic> toJson() => <String, dynamic>{'id': id, 'name': name};
}
