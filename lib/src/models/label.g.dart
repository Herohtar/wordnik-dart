// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Label _$LabelFromJson(Map<String, dynamic> json) {
  return new Label(text: json['text'] as String, type: json['type'] as String);
}

Map<String, dynamic> _$LabelToJson(Label instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  writeNotNull('type', instance.type);
  return val;
}
