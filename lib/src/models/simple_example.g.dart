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

Map<String, dynamic> _$SimpleExampleToJson(SimpleExample instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('text', instance.text);
  writeNotNull('title', instance.title);
  writeNotNull('url', instance.url);
  return val;
}
