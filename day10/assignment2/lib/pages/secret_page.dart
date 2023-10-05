import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

var backgroundImg = "assets/images/bernard-hermant-jNYKN6WykY4-unsplash.jpg";

class SecretPage extends StatelessWidget {
  const SecretPage({super.key});

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
          future: SecretCatApi.fetchSecrets(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var reversedList = snapshot.data!.reversed.toList();
              return PageView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return FadeInRight(
                    delay: Duration(milliseconds: 200),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white38,
                          backgroundImage: AssetImage(
                            'assets/images/hair-spray.gif',
                          ),
                        ),
                        SizedBox(height: 24),
                        Text(
                          reversedList[index].secret,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          reversedList[index].author?.username ?? '익명',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
