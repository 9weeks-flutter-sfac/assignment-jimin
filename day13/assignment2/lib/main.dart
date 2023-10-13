import 'package:assignment2/model/location.dart';
import 'package:assignment2/model/product.dart';
import 'package:assignment2/model/product2.dart';
import 'package:assignment2/model/product3.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dio = Dio();
  Product? myData = null;
  Product2? myData2 = null;
  Product3? myData3 = null;
  Location? myLoc = null;

  getData() async {
    var url = "https://sniperfactory.com/sfac/http_json_data";

    var res = await dio.get(url);
    var prd = Product.fromMap(res.data["item"]);
    print(prd);

    myData = prd;
  }

  getData2() async {
    var url2 = "https://random-data-api.com/api/v2/addresses";
    var res = await dio.get(url2);
    var prd2 = Product2.fromMap(res.data);
    print(res);

    myData2 = prd2;
  }

  getData3() async {
    var url3 = "https://random-data-api.com/api/nation/random_nation";
    var res = await dio.get(url3);
    var prd3 = Product3.fromMap(res.data);

    myData3 = prd3;
  }

  Future getLocation() async {
    var locationUrl = "https://rickandmortyapi.com/api/location/3";
    var res = await dio.get(locationUrl);
    var loc = Location.fromMap(res.data);

    myLoc = loc;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                TextButton(
                  onPressed: () async {
                    await getLocation();
                    setState(() {});
                  },
                  child: Text('데이터 불러오기'),
                ),
                if (myLoc?.residents == null)
                  Center(child: Text("데이터를 불러오는 중입니다."))
                else
                  FutureBuilder(
                    future: getLocation(),
                    child: ListView.builder(
                      itemCount: myLoc?.residents.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              child: Text(myLoc?.residents[index]),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
