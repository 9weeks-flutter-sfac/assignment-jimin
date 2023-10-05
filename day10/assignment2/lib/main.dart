import 'package:assignment2/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Neo"),
      home: MainPage(),
    );
  }
}
