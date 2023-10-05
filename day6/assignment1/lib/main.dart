import 'package:assignment1/ContectTile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue,
          title: Text('내 연락처'),
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: ListView(
          children: [
            ContectTile(
              name: '이테디',
              number: '010-1000-1000',
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContectTile(
              name: '벨라',
              number: '010-1000-2000',
              imgUrl: 'https://picsum.photos/90/90',
            ),
            ContectTile(
              name: '크리스',
              number: '010-1000-3000',
              imgUrl: 'https://picsum.photos/80/80',
            ),
            ContectTile(
              name: '주노',
              number: '010-1000-4000',
              imgUrl: 'https://picsum.photos/70/70',
            ),
            ContectTile(
              name: '해리',
              number: '010-1000-5000',
              imgUrl: 'https://picsum.photos/60/60',
            ),
            ContectTile(
              name: '헬렌',
              number: '010-1000-6000',
              imgUrl: 'https://picsum.photos/50/50',
            ),
            ContectTile(
              name: '신디',
              number: '010-1000-7000',
              imgUrl: 'https://picsum.photos/40/40',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_phone), label: ('연락처')),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: ('통화기록')),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ('설정')),
          ],
        ),
      ),
    );
  }
}
