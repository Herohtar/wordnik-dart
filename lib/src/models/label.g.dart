// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Label _$LabelFromJson(Map<String, dynamic> json) {
  return new Label(text: json['text'] as String, type: json['type'] as String);
}

abstract class _$LabelSerializerMixin {
  String get text;
  String get type;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('text', text);
    writeNotNull('type', type);
    return val;
  }
}
