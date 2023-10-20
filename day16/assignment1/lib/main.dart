import 'package:assignment1/page/login_page.dart';
import 'package:assignment1/page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/main', page: () => MainPage()),
      ],
      theme: ThemeData(useMaterial3: true),
      home: const MainPage(),
    );
  }
}
