import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
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
  Dio dio = Dio();
  String? message = "메세지 가져오기";
  String result = "";

  void getData() async {
    result = "";
    setState(() {});
    try {
      var url = 'https://sniperfactory.com/sfac/http_randomly';
      var res = await dio.get(url);
      result = res.data["item"]["name"];
    } on DioError catch (e) {
      print("에러 발생 ${e.message}");
      result = e.message.toString();
    } finally {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("SINPER FACTORY"),
              FutureBuilder(
                future: dio.get('https://sniperfactory.com/sfac/http_test'),
                // future: Future.delayed(Duration(seconds: 3), () => "Hello!"),
                builder: (context, snapshot) {
                  print('현재 스냅샷 정보: ${snapshot.connectionState}');
                  print('hasData 값: ${snapshot.hasData}');
                  if (snapshot.connectionState == ConnectionState.done) {
                    //if (snapshot.hasData)
                    return Text(snapshot.data?.data["result"] ?? "실패");
                    //return Text(snapshot.data!.data.toString());
                  }
                  return LinearProgressIndicator(); //로딩바
                  //return CircularProgressIndicator(); //로딩 동그라미
                  // return Container(
                  //   width: 20,
                  //   height: 20,
                  //   color: Colors.red,
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
