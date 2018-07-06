import 'dart:convert';

class WordList {
  final DateTime createdAt;
  final String description;
  final int id;
  final DateTime lastActivityAt;
  final String name;
  final int numberWordsInList;
  final String permalink;
  final String type;
  final DateTime updatedAt;
  final int userId;
  final String username;

  WordList(String listName, String listType, {String listDescription})
  : createdAt = null,
    description = listDescription,
    id = 0,
    lastActivityAt = null,
    name = listName,
    numberWordsInList = 0,
    permalink = null,
    type = listType,
    updatedAt = null,
    userId = 0,
    username =null;

  WordList.fromMap(Map<String, dynamic> map)
  : createdAt = (map['createdAt'] == null) ? null : DateTime.parse(map['createdAt']),
    description = map['description'],
    id = map['id'] ?? 0,
    lastActivityAt = (map['lastActivityAt'] == null) ? null : DateTime.parse(map['lastActivityAt']),
    name = map['name'],
    numberWordsInList = map['numberWordsInList'] ?? 0,
    permalink = map['permalink'],
    type = map['type'],
    updatedAt = (map['updatedAt'] == null) ? null : DateTime.parse(map['updatedAt']),
    userId = map['userId'] ?? 0,
    username = map['username'];

  factory WordList.fromJson(String jsonString) {
    return WordList.fromMap(json.decode(jsonString));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic> {
      'createdAt': createdAt,
      'description': description,
      'id': id,
      'lastActivityAt': lastActivityAt,
      'name': name,
      'numberWordsInList': numberWordsInList,
      'permalink': permalink,
      'type': type,
      'updatedAt': updatedAt,
      'userId': userId,
      'username': username
    };
  }
}
