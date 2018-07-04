import 'dart:convert';

class AudioFile {
  final String attributionText;
  final String attributionUrl;
  final String audioType;
  final int commentCount;
  final DateTime createdAt;
  final String createdBy;
  final String description;
  final double duration;
  final String fileUrl;
  final int id; // TODO: required
  final double voteAverage;
  final int voteCount;
  final double voteWeightedAverage;
  final String word;

  AudioFile.fromMap(Map<String, dynamic> map)
  : attributionText = map['attributionText'],
    attributionUrl = map['attributionUrl'],
    audioType = map['audioType'],
    commentCount = map['commentCount'] ?? 0,
    createdAt = (map['createdAt'] == null) ? null : DateTime.parse(map['createdAt']),
    createdBy = map['createdBy'],
    description = map['description'],
    duration = (map['duration'] ?? 0).toDouble(),
    fileUrl = map['fileUrl'],
    id = map['id'] ?? 0,
    voteAverage = (map['voteAverage'] ?? 0).toDouble(),
    voteCount = map['voteCount'] ?? 0,
    voteWeightedAverage = (map['voteWeightedAverage'] ?? 0).toDouble(),
    word = map['word'];

  factory AudioFile.fromJson(String jsonString) {
    return AudioFile.fromMap(json.decode(jsonString));
  }
}
