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

abstract class _$RelatedSerializerMixin {
  String get gram;
  String get label1;
  String get label2;
  String get label3;
  String get label4;
  String get relationshipType;
  List<String> get words;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gram': gram,
        'label1': label1,
        'label2': label2,
        'label3': label3,
        'label4': label4,
        'relationshipType': relationshipType,
        'words': words
      };
}
