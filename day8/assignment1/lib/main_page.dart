import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:dio/dio.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  var url = "https://sniperfactory.com/sfac/http_day16_dogs";
  int imageUrlIndex = 0;
  var data = [];
  var dio = Dio();

  Future<void> fetchData() async {
    var res = await dio.get(url);
    if (res.statusCode == 200) {
      data = res.data["body"];
    }
  }

  // Future<List<dynamic>> getData() async {
  //   var res = await dio.get(url);
  //   if (res.statusCode == 200) {
  //     print(res.data["body"]);
  //     return res.data["body"];
  //   }
  //   return [];
  // }

  void _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));

    _refreshController.refreshCompleted();
  }

  // 선택된 이미지의 인덱스를 저장하는 변수

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('7일차 과제 1번')),
      body: SafeArea(
        child: SmartRefresher(
          header: WaterDropHeader(),
          enablePullDown: true,
          enablePullUp: false,
          footer: CustomFooter(
            builder: (BuildContext context, LoadStatus? mode) {
              Widget body;
              if (mode == LoadStatus.idle) {
                body = Text("pull up load");
              } else if (mode == LoadStatus.loading) {
                body = CupertinoActivityIndicator();
              } else if (mode == LoadStatus.failed) {
                body = Text("Load Failed! Click retry!");
              } else if (mode == LoadStatus.canLoading) {
                body = Text("release to load more");
              } else {
                body = Text("No more Data");
              }

              return SizedBox(
                height: 55.0,
                child: Center(child: body),
              );
            },
          ),
          controller: _refreshController,
          onRefresh: _onRefresh,
          child: Center(
            child: FutureBuilder(
              future: fetchData(),
              builder: (context, snapshot) {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20, // 세로 간격 조절
                  ),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: GridTile(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 700, // 원하는 높이로 조절하세요
                            child: Image.network(
                              data[index]["url"],
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        footer: Container(
                          color:
                              Colors.white, // Background color for the footer
                          child: Column(
                            children: [
                              Text(
                                data[index]["msg"],
                              ),
                              Icon(Icons.message)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
