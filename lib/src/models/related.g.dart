// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Related _$RelatedFromJson(Map<String, dynamic> json) {
  return new Related(
      gram: json['gram'] as String,
      label1: json['label1'] as String,
      label2: json['label2'] as String,
      label3: json['label3'] as String,
      label4: json['label4'] as String,
      relationshipType: json['relationshipType'] as String,
      words: (json['words'] as List)?.map((e) => e as String)?.toList() ?? []);
}

Map<String, dynamic> _$RelatedToJson(Related instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('gram', instance.gram);
  writeNotNull('label1', instance.label1);
  writeNotNull('label2', instance.label2);
  writeNotNull('label3', instance.label3);
  writeNotNull('label4', instance.label4);
  writeNotNull('relationshipType', instance.relationshipType);
  writeNotNull('words', instance.words);
  return val;
}
