import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Meowfacts {
  String data;
  Meowfacts({
    required this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
    };
  }

  factory Meowfacts.fromMap(Map<String, dynamic> map) {
    return Meowfacts(
      data: map['data'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Meowfacts.fromJson(String source) =>
      Meowfacts.fromMap(json.decode(source) as Map<String, dynamic>);
}

void main() async {
  Dio dio = 
}
