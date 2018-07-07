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

abstract class _$RootSerializerMixin {
  List<Category> get categories;
  int get id;
  String get name;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'categories': categories, 'id': id, 'name': name};
}
