import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product3 {
  int id;
  String uid;
  String nationality;
  String language;
  String capital;
  String national_sport;
  String flag;
  Product3({
    required this.id,
    required this.uid,
    required this.nationality,
    required this.language,
    required this.capital,
    required this.national_sport,
    required this.flag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'uid': uid,
      'nationality': nationality,
      'language': language,
      'capital': capital,
      'national_sport': national_sport,
      'flag': flag,
    };
  }

  factory Product3.fromMap(Map<String, dynamic> map) {
    return Product3(
      id: map['id'] as int,
      uid: map['uid'] as String,
      nationality: map['nationality'] as String,
      language: map['language'] as String,
      capital: map['capital'] as String,
      national_sport: map['national_sport'] as String,
      flag: map['flag'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product3.fromJson(String source) =>
      Product3.fromMap(json.decode(source) as Map<String, dynamic>);
}
