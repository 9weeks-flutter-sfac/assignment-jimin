import 'package:assignment5/model/dog.dart';
import 'package:assignment5/widget/dog_detail_dialog.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Future<Dog?> getData() async {
    var url = 'https://dog.ceo/api/breeds/image/random';
    Dio dio = Dio();
    var res = await dio.get(url);
    if (res.statusCode == 200) {
      return Dog.fromMap(res.data);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return snapshot.data?.message == null
                    ? SizedBox()
                    : GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => DogDetailDialog(
                              dog: snapshot.data!,
                            ),
                          );
                        },
                        child: Image.network(
                          snapshot.data!.message,
                          fit: BoxFit.cover,
                        ),
                      );
              }
              return CircularProgressIndicator();
            },
          );
        },
      ),
    );
  }
}
