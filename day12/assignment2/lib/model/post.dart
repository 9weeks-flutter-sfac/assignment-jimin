// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:assignment2/model/comment.dart';

class Post {
  String symbolImg;
  String postUrl;
  String title;
  DateTime createdAt;
  Duration? readTime;
  String thumbnailImg;
  int? upCount;
  List<Comment> comments;
  Post({
    required this.symbolImg,
    required this.postUrl,
    required this.title,
    required this.createdAt,
    required this.readTime,
    required this.thumbnailImg,
    this.upCount,
    required this.comments,
  });

  addUpCount() {
    if (upCount != null) {
      upCount = upCount! + 1;
    } else {
      upCount = 1;
    }
  }

  addComment(Comment comment) {
    comments.add(comment);
  }
}
