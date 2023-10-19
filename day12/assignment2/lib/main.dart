import 'package:assignment2/model/post.dart';
import 'package:assignment2/widget/post_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Post post = Post(
    symbolImg:
        'https://res.cloudinary.com/daily-now/image/upload/t_logo,f_auto/v1/logos/a72ffa136c354e808949997e664d7898',
    title: 'A simple   PPomodoro App written in Flutter',
    createdAt: DateTime(2021, 02, 25),
    readTime: null,
    thumbnailImg:
        'https://res.cloudinary.com/daily-now/image/upload/f_auto,q_auto/v1/posts/87ca15d20d6759a5183ea70f90cd24e2',
    comments: [],
    postUrl:
        'https://flutterawesome.com/a-simple-pomodoro-app-written-in-flutter/?ref=dailydev',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                PostCard(post: post),
                PostCard(post: post),
                PostCard(post: post),
                PostCard(post: post),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
