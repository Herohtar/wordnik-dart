// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentProvider _$ContentProviderFromJson(Map<String, dynamic> json) {
  return new ContentProvider(
      id: json['id'] as int ?? 0, name: json['name'] as String);
}

abstract class _$ContentProviderSerializerMixin {
  int get id;
  String get name;
  Map<String, dynamic> toJson() => <String, dynamic>{'id': id, 'name': name};
}
