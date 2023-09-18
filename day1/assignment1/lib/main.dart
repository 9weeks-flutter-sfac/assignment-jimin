import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 250, 252),
        body: Center(
          child: RichText(
            text: TextSpan(
              text: '안녕하세요!\n간단하게 제 ',
              style: TextStyle(fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: '소개',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                  ),
                ),
                TextSpan(text: '를 해보겠습니다\n\n\n먼저 저의 MBTI는 '),
                TextSpan(
                  text: 'INFJ',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 24,
                  ),
                ),
                TextSpan(text: '이고\n직업은 '),
                TextSpan(
                  text: '개발자',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 24,
                  ),
                ),
                TextSpan(text: '입니다.\n\n\n'),
                TextSpan(
                  text: '꿈',
                  style: TextStyle(
                    color: Colors.orange,
                    decoration: TextDecoration.lineThrough, //취소선
                    decorationColor: Colors.black,
                  ),
                ),
                TextSpan(
                  text: '은 없고요\n그냥 놀고 싶습니다\n\n\n',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough, //취소선
                    decorationColor: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextSpan(
                  text: '감사합니다',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
