// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentProvider _$ContentProviderFromJson(Map<String, dynamic> json) {
  return new ContentProvider(
      id: json['id'] as int, name: json['name'] as String);
}

Map<String, dynamic> _$ContentProviderToJson(ContentProvider instance) {
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
