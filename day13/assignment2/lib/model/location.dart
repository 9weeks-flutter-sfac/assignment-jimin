import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Location {
  int id;
  String name;
  String type;
  String dimension;
  List residents;
  String url;
  String created;
  Location({
    required this.id,
    required this.name,
    required this.type,
    required this.dimension,
    required this.residents,
    required this.url,
    required this.created,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'type': type,
      'dimension': dimension,
      'residents': residents,
      'url': url,
      'created': created,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      id: map['id'] as int,
      name: map['name'] as String,
      type: map['type'] as String,
      dimension: map['dimension'] as String,
      residents: List.from(
        (map['residents'] as List),
      ),
      url: map['url'] as String,
      created: map['created'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source) as Map<String, dynamic>);
}
