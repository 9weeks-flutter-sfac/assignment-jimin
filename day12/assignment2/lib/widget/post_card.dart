import 'package:assignment2/model/post.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.post});
  final Post post;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrlString(post.postUrl);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(post.symbolImg),
              ),
              SizedBox(height: 8),
              Text(
                post.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(DateFormat.MMMEd().format(post.createdAt)),
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(post.thumbnailImg),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.upload),
                      Text(post.upCount?.toString() ?? '')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.comment),
                      Text(post.comments.length.toString()),
                    ],
                  ),
                  Icon(Icons.share),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
