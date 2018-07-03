import 'dart:convert';

class FacetValue {
  final int count;
  final String value;

  FacetValue.fromMap(Map<String, dynamic> map)
  : count = map['count'] ?? 0,
    value = map['value'];
  
  factory FacetValue.fromJson(String jsonString) {
    return FacetValue.fromMap(json.decode(jsonString));
  }
}