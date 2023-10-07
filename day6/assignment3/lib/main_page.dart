import 'package:assignment3/OptionCard.dart';
import 'package:assignment3/admin_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MaimPageState();
}

class _MaimPageState extends State<MainPage> {
  List myMenu = [];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: GestureDetector(
          child: Text('분식왕 이테디 주문하기'),
          onDoubleTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AdminPage(),
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '주문 리스트',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
                height: 50,
                alignment: Alignment.center,
                child: myMenu.isNotEmpty
                    ? ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: myMenu.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Chip(
                              label: Text(myMenu[index]),
                              onDeleted: () {
                                myMenu.removeAt(index);
                                setState(() {});
                              },
                            ),
                          );
                        },
                      )
                    : Text('주문한 옵션이 없습니다.')),
            SizedBox(height: 16),
            Text(
              '음식',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                children: [
                  InkWell(
                    onTap: () {
                      myMenu.add('떡볶이');
                      setState(() {});
                    },
                    child: OptionCard(
                      foodName: '떡볶이',
                      imgUrl: 'assets/option_bokki.png',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('맥주');
                      setState(() {});
                    },
                    child: OptionCard(
                      foodName: '맥주',
                      imgUrl: 'assets/option_beer.png',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('김밥');
                      setState(() {});
                    },
                    child: OptionCard(
                      foodName: '김밥',
                      imgUrl: 'assets/option_kimbap.png',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('오므라이스');
                      setState(() {});
                    },
                    child: OptionCard(
                      foodName: '오므라이스',
                      imgUrl: 'assets/option_omurice.png',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('돈까스');
                      setState(() {});
                    },
                    child: OptionCard(
                      foodName: '돈까스',
                      imgUrl: 'assets/option_pork_cutlets.png',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('라면');
                      setState(() {});
                    },
                    child: OptionCard(
                      foodName: '라면',
                      imgUrl: 'assets/option_ramen.png',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('우동');
                      setState(() {});
                    },
                    child: OptionCard(
                      foodName: '우동',
                      imgUrl: 'assets/option_udon.png',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: myMenu.isNotEmpty
          ? FloatingActionButton.extended(
              onPressed: () {},
              label: Text('결제하기'),
            )
          : null, //sizedBox를 쓰면 애니메이션이 없음
    );
  }
}
