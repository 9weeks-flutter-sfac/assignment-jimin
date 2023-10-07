import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var backgroundImg = "assets/nasa-pd4lo70LdbI-unsplash.jpg";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backgroundImg),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black45, BlendMode.darken)),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Text(
                    '10월 5일 목요일',
                    style: TextStyle(
                        color: Colors.green[300],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '17:19',
                    style: TextStyle(
                        color: Colors.green[300],
                        fontSize: 100,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //이전으로 이동 버튼
              FloatingActionButton(
                backgroundColor: Colors.grey[800],
                onPressed: () {},
                child: Icon(
                  Icons.flashlight_on,
                ),
              ),
              // 다음으로 이동 버튼
              FloatingActionButton(
                backgroundColor: Colors.grey[800],
                onPressed: () {},
                child: Icon(
                  Icons.camera_alt,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
