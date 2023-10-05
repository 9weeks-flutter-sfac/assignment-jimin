import 'package:assigment2/MusicTile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> playList = [
      {
        "imgUrl": 'assets/images/music_come_with_me.png',
        "title": 'Come with me',
        "artist": 'Surfaces 및 salem ilese',
        "duration": Duration(minutes: 3, seconds: 14),
      },
      {
        "imgUrl": 'assets/images/music_good_day.png',
        "title": 'Good day',
        "artist": 'Surfaces',
        "playTime": '3:09',
        "duration": Duration(minutes: 3, seconds: 09),
      },
      {
        "imgUrl": 'assets/images/music_honesty.png',
        "title": 'Honesty',
        "artist": 'Pink Sweat\$',
        "playTime": '3:24',
        "duration": Duration(minutes: 3, seconds: 24),
      },
      {
        "imgUrl": 'assets/images/music_i_wish_i_missed_my_ex.png',
        "title": 'I Wish I Missed My Ex',
        "artist": '마할리아 버크마',
        "playTime": '3:20',
        "duration": Duration(minutes: 3, seconds: 20),
      },
      {
        "imgUrl": 'assets/images/music_plastic_plants.png',
        "title": 'Plastic Plants',
        "artist": '마할리아 버크마',
        "playTime": '3:24',
        "duration": Duration(minutes: 3, seconds: 24),
      },
      {
        "imgUrl": 'assets/images/music_sucker_for_you.png',
        "title": 'Sucker for you',
        "artist": '맷 테리',
        "duration": Duration(minutes: 3, seconds: 00),
      },
      {
        "imgUrl": 'assets/images/music_summer_is_for_falling_in_love.png',
        "title": 'Summer is for falling in love',
        "artist": 'Sarah Kang & Eye Love Brandon',
        "duration": Duration(minutes: 3, seconds: 00),
      },
      {
        "imgUrl": 'assets/images/music_these_days.png',
        "title": 'These days(feat. Jess Glynne, Macklemore & Dan Caplen)',
        "artist": 'Rudimental',
        "duration": Duration(minutes: 3, seconds: 00),
      },
      {
        "imgUrl": 'assets/images/music_you_make_me.png',
        "title": 'You Make Me',
        "artist": 'DAY6',
        "duration": Duration(minutes: 3, seconds: 00),
      },
      {
        "imgUrl": 'assets/images/music_zombie_pop.png',
        "title": 'Zombie Pop',
        "artist": 'DRP IAN',
        "duration": Duration(minutes: 3, seconds: 00),
      }
    ];
    return MaterialApp(
      theme: ThemeData.from(colorScheme: ColorScheme.dark()),
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.black,
          // foregroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.navigate_before),
          title: Text('아워리스트'),
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.airplay),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ],
          shape: Border(
            bottom: BorderSide(
              color: Colors.white12,
              width: 1,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: playList.length,
          itemBuilder: (context, index) => MusicTile(
            imgUrl: playList[index]["imgUrl"],
            title: playList[index]["title"],
            artist: playList[index]["artist"],
            playTime: playList[index]["duration"].toString(),
          ),
        ),
        bottomSheet: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 70,
              color: Colors.white12,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset('assets/images/music_you_make_me.png'),
                ),
                title: Text('You Make Me'),
                subtitle: Text('Day6'),
                trailing: Row(
                  //trailing은 원칙적으로 하나, Row는 자식을 확장시키려는 성질이 있음. -> 확장하지 못하게 크기 제한
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.play_arrow),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.skip_next),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 1.5,
              alignment: Alignment.centerLeft,
              color: Colors.white54,
              child: Container(
                width: 14,
                color: Colors.white70,
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white,
          currentIndex: 2,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ('홈')),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ('둘러보기')),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music), label: ('보관함')),
          ],
        ),
      ),
    );
  }
}
