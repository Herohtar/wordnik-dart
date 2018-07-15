// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentProvider _$ContentProviderFromJson(Map<String, dynamic> json) {
  return new ContentProvider(
      id: json['id'] as int, name: json['name'] as String);
}

abstract class _$ContentProviderSerializerMixin {
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
