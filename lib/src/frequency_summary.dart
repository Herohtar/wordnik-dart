import 'dart:convert';

import 'package:wordnik/src/frequency.dart';

class FrequencySummary {
  final int unknownYearCount;
  final int totalCount;
  final String frequencyString;
  final String word;
  final List<Frequency> frequency;

  FrequencySummary.fromMap(Map<String, dynamic> map)
  : unknownYearCount = map['unknownYearCount'] ?? 0,
    totalCount = map['totalCount'] ?? 0,
    frequencyString = map['frequencyString'],
    word = map['word'],
    frequency = map['frequency']?.map((freq) => Frequency.fromMap(freq))?.toList() ?? <Frequency>[];

  factory FrequencySummary.fromJson(String jsonString) {
    return FrequencySummary.fromMap(json.decode(jsonString));
  }
}
