import 'package:assignment1/screen/contact_screen.dart';
import 'package:assignment1/screen/history_screen.dart';
import 'package:assignment1/screen/setting_screen.dart';
import 'package:assignment1/widget/ContectTile.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var currentScreenIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('내 연락처'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: [
        ContactScreen(),
        HistoryScreen(),
        SettingScreen(),
      ][currentScreenIdx],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreenIdx,
        onTap: (value) {
          currentScreenIdx = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone), label: ('연락처')),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: ('통화기록')),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ('설정')),
        ],
      ),
    );
  }
}
