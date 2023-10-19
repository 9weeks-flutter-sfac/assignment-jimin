import 'package:assignment1/OptionCard.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MaimPageState();
}

class _MaimPageState extends State<MainPage> {
  SharedPreferences? prefs;
  Dio dio = Dio();
  List<String> myMenu = [];
  List<int> myMenuPrice = [];

  Future<List<dynamic>> getData() async {
    var res = await dio
        .get('http://52.79.115.43:8090/api/collections/options/records');
    if (res.statusCode == 200) {
      return res.data["items"];
    }
    return [];
  }

  initPreferences() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs != null) {
      var myList = prefs!.getStringList('myMenuList');
      myMenu = myList ?? [];
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    initPreferences();
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: GestureDetector(
          child: Text('분식왕 이테디 주문하기'),
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
                alignment: Alignment.topLeft,
                child: myMenu.isNotEmpty
                    ? Wrap(
                        children: myMenu
                            .map(
                              (e) => Chip(
                                label: Text(e),
                                onDeleted: () {
                                  myMenu.remove(e);
                                  setState(() {});
                                },
                              ),
                            )
                            .toList(),
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
              child: FutureBuilder(
                future: getData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return GridView.builder(
                      itemCount: snapshot.data?.length ?? 0,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                      ),
                      itemBuilder: (context, index) {
                        return OptionCard(
                          imgUrl: snapshot.data![index]["imageUrl"],
                          foodName: snapshot.data![index]["menu"],
                          onTap: () {
                            setState(() {
                              if (prefs != null) {
                                prefs!.setStringList('myMenuList', myMenu);
                              }
                              myMenu.add(snapshot.data![index]['menu']);
                            });
                          },
                        );
                      },
                    );
                  }
                  return CircularProgressIndicator();
                },
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
