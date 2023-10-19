import 'package:assignment6/model/post.dart';
import 'package:assignment6/widget/post_tile.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Future<List<Post>> readData() async {
    Dio dio = Dio();
    var url = 'https://jsonplaceholder.typicode.com/posts';
    var res = await dio.get(url);
    if (res.statusCode == 200) {
      var post = List<Map<String, dynamic>>.from(res.data);
      return post.map((e) => Post.fromMap(e)).toList();
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: readData(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            return ListView.separated(
              itemCount: snapshot.data!.length ?? 0,
              itemBuilder: (context, index) =>
                  PostTile(post: snapshot.data![index]),
              separatorBuilder: (context, index) => ((index + 1) % 5) == 0
                  ? Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        'Post ${index + 2} ~ ${index + 6}',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    )
                  : SizedBox(),
            );
          }
          return LinearProgressIndicator();
        },
      ),
    );
  }
}
