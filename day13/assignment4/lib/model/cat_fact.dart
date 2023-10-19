import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CatFact {
  String fact;
  int length;
  CatFact({
    required this.fact,
    required this.length,
  });

  factory CatFact.fromMap(Map<String, dynamic> map) {
    return CatFact(
      fact: map['fact'] as String,
      length: map['length'] as int,
    );
  }

  factory CatFact.formFact(String fact) {
    return CatFact(
      fact: fact,
      length: fact.length,
    );
  }

  @override
  String toString() {
    return "CatFact($fact, $length)";
  }
}
