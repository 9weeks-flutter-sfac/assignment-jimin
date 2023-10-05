import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

var backgroundImg = "assets/images/bernard-hermant-jNYKN6WykY4-unsplash.jpg";

class AuthorPage extends StatelessWidget {
  const AuthorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('뒤로가기'),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(backgroundImg),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)),
        ),
        child: FutureBuilder(
          future: SecretCatApi.fetchAuthors(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return GridView.builder(
                itemCount: snapshot.data?.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  return ZoomIn(
                    delay: Duration(milliseconds: 200 * index),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 48,
                          backgroundImage:
                              NetworkImage(snapshot.data![index].avatar!),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          snapshot.data![index].username,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}
