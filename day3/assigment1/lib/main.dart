import 'package:assigment1/DrinkTile.dart';
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
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.keyboard_arrow_left),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: Padding(
          //여기다 걸면 하나하나 안 해 줘도 됨!
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              Text(
                'new'.toUpperCase(), //소문자를 대문자로 변환
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              DrinkTile(
                title: '골든 미모사 그린 티',
                subTitle: 'Golden Mimosa Greern Tea',
                price: 6100,
                imgUrl: 'assets/images/item_drink1.jpeg',
              ),
              DrinkTile(
                title: '블랙 햅쌀 고봉 라떼',
                subTitle: 'Black Rice Latte',
                price: 6300,
                imgUrl: 'assets/images/item_drink2.jpeg',
              ),
              DrinkTile(
                title: '아이스 블랙 햅쌀 고봉 라떼',
                subTitle: 'Iced Black Rice Latte',
                price: 6300,
                imgUrl: 'assets/images/item_drink3.jpeg',
              ),
              DrinkTile(
                title: '스타벅스 튜메릭 라떼',
                subTitle: 'Starbucks Turmeric Latte',
                price: 6100,
                imgUrl: 'assets/images/item_drink4.jpeg',
              ),
              DrinkTile(
                title: '아이스 스타벅스 튜메릭 라떼',
                subTitle: 'Iced Starbucks Turmeric Latte',
                price: 6100,
                imgUrl: 'assets/images/item_drink5.jpeg',
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          height: 64,
          color: Colors.black87,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '주문할 매장을 선택해 주세요.',
                  style: TextStyle(color: Colors.white),
                ),
                Container(
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, //형태 고정
          currentIndex: 2, //2번 인덱스로 고정(Order)
          fixedColor: Colors.green, //선택된 item의 색상 지정
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card), label: ('Pay')),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_cafe), label: ('Order')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shop,
                  // color: Colors.black, 노가다할 뻔
                ),
                label: ('Shop')),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), label: ('Other')),
          ],
        ),
      ),
    );
  }
}
