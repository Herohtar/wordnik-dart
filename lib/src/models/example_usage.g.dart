// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_usage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExampleUsage _$ExampleUsageFromJson(Map<String, dynamic> json) {
  return new ExampleUsage(text: json['text'] as String);
}

Map<String, dynamic> _$ExampleUsageToJson(ExampleUsage instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  return val;
}
