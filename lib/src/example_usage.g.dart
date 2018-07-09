// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_usage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExampleUsage _$ExampleUsageFromJson(Map<String, dynamic> json) {
  return new ExampleUsage(text: json['text'] as String);
}

abstract class _$ExampleUsageSerializerMixin {
  String get text;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('text', text);
    return val;
  }
}
