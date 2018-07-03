import 'dart:convert';

import 'package:wordnik/src/frequency.dart';

class FrequencySummary {
  final List<Frequency> frequency;
  final String frequencyString;
  final int totalCount;
  final int unknownYearCount;
  final String word;

  FrequencySummary.fromMap(Map<String, dynamic> map)
  : frequency = map['frequency']?.map((freq) => Frequency.fromMap(freq))?.toList() ?? <Frequency>[],
    frequencyString = map['frequencyString'],
    totalCount = map['totalCount'] ?? 0,
    unknownYearCount = map['unknownYearCount'] ?? 0,
    word = map['word'];

  factory FrequencySummary.fromJson(String jsonString) {
    return FrequencySummary.fromMap(json.decode(jsonString));
  }
}
