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

Map<String, dynamic> _$FacetToJson(Facet instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('facetValues', instance.facetValues);
  writeNotNull('name', instance.name);
  return val;
}
