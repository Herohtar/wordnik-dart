// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Facet _$FacetFromJson(Map<String, dynamic> json) {
  return new Facet(
      facetValues: (json['facetValues'] as List)
              ?.map((e) => e == null
                  ? null
                  : new FacetValue.fromJson(e as Map<String, dynamic>))
              ?.toList() ??
          [],
      name: json['name'] as String);
}

abstract class _$FacetSerializerMixin {
  List<FacetValue> get facetValues;
  String get name;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'facetValues': facetValues, 'name': name};
}
