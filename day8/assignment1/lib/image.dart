import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Image {
  String msg;
  String url;
  Image({
    required this.msg,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'msg': msg,
      'url': url,
    };
  }

  factory Image.fromMap(Map<String, dynamic> map) {
    return Image(
      msg: map['msg'] as String,
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Image.fromJson(String source) =>
      Image.fromMap(json.decode(source) as Map<String, dynamic>);
}
