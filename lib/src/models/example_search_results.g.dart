// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_search_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExampleSearchResults _$ExampleSearchResultsFromJson(Map<String, dynamic> json) {
  return new ExampleSearchResults(
      examples: (json['examples'] as List)
              ?.map((e) => e == null
                  ? null
                  : new Example.fromJson(e as Map<String, dynamic>))
              ?.toList() ??
          [],
      facets: (json['facets'] as List)
              ?.map((e) => e == null
                  ? null
                  : new Facet.fromJson(e as Map<String, dynamic>))
              ?.toList() ??
          []);
}

Map<String, dynamic> _$ExampleSearchResultsToJson(
    ExampleSearchResults instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('examples', instance.examples);
  writeNotNull('facets', instance.facets);
  return val;
}
