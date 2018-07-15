// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StringValue _$StringValueFromJson(Map<String, dynamic> json) {
  return new StringValue(word: json['word'] as String);
}

abstract class _$StringValueSerializerMixin {
  String get word;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('word', word);
    return val;
  }
}
