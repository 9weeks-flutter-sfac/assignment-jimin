import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class AdviceSlip {
  int id;
  String advice;
  AdviceSlip({
    required this.id,
    required this.advice,
  });

  factory AdviceSlip.fromMap(Map<String, dynamic> map) {
    return AdviceSlip(
      id: map['id'] as int,
      advice: map['advice'] as String,
    );
  }

  @override
  toString() => 'Slip($advice, $id)';
}
