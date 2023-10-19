import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Activity {
  String activity;
  String type;
  int participants;
  double price;
  String link;
  String key;
  double accessibility;
  Activity({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility,
  });

  factory Activity.fromMap(Map<String, dynamic> map) {
    return Activity(
      activity: map['activity'] as String,
      type: map['type'] as String,
      participants: map['participants'] as int,
      price: map['price'] is int
          ? (map['price'] as int).toDouble()
          : map['price'] as double,
      link: map['link'] as String,
      key: map['key'] as String,
      accessibility: map['accessibility'] as double,
    );
  }

  @override
  toString() => 'Activity($activity, $type, $participants, $price)';
}
