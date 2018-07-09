// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleExample _$SimpleExampleFromJson(Map<String, dynamic> json) {
  return new SimpleExample(
      id: json['id'] as int,
      text: json['text'] as String,
      title: json['title'] as String,
      url: json['url'] as String);
}

abstract class _$SimpleExampleSerializerMixin {
  int get id;
  String get text;
  String get title;
  String get url;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('id', id);
    writeNotNull('text', text);
    writeNotNull('title', title);
    writeNotNull('url', url);
    return val;
  }
}
