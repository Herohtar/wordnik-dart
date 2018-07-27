// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Root _$RootFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['id']);
  return new Root(json['id'] as int ?? 0,
      categories: (json['categories'] as List)
              ?.map((e) => e == null
                  ? null
                  : new Category.fromJson(e as Map<String, dynamic>))
              ?.toList() ??
          [],
      name: json['name'] as String);
}

Map<String, dynamic> _$RootToJson(Root instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('categories', instance.categories);
  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  return val;
}
