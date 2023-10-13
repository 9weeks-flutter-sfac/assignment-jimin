import 'package:assignment1/model/post.dart';
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
  List<Map<String, dynamic>> posts = [
    {
      "name": "김지민",
      "mbti": MBTI.ESTP,
      "residence": "양천구",
      "age": 23,
    },
    {
      "name": "신주희",
      "mbti": MBTI.INFP,
      "residence": "양천구",
      "age": 24,
    },
    {
      "name": "도희정",
      "mbti": MBTI.ISTP,
      "residence": "광명시",
      "age": 25,
    },
    {
      "name": "최상현",
      "mbti": MBTI.INFJ,
      "residence": "금천구",
      "age": 29,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
          itemCount: posts.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            var post = Post(
                name: posts[index]["name"],
                mbti: posts[index]["mbti"],
                residence: posts[index]["residence"],
                age: posts[index]["age"]);

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.purple[50],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("이름: ${post.name}"),
                    Text("MBTI: ${MBTI.ENFJ.name}"),
                    Text("거주지: ${post.residence}"),
                    Text("나이: ${post.age.toString()}"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
