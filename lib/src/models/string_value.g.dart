// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StringValue _$StringValueFromJson(Map<String, dynamic> json) {
  return new StringValue(word: json['word'] as String);
}

Map<String, dynamic> _$StringValueToJson(StringValue instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', instance.word);
  return val;
}
