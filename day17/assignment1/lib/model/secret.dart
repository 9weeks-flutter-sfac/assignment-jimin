import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Secret {
  String secret;
  String author;
  String authorName;
  Secret({
    required this.secret,
    required this.author,
    required this.authorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': secret,
      'author': author,
      'authorName': authorName,
    };
  }

  factory Secret.fromMap(Map<String, dynamic> map) {
    return Secret(
      secret: map['secret'] as String,
      author: map['author'] as String,
      authorName: map['authorName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Secret.fromJson(String source) =>
      Secret.fromMap(json.decode(source) as Map<String, dynamic>);
}
