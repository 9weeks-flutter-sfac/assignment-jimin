import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

var backgroundImg = "assets/images/bernard-hermant-jNYKN6WykY4-unsplash.jpg";

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  bool showImage = false;

  Widget build(BuildContext context) {
    var controller = TextEditingController();
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller,
                minLines: 7,
                maxLines: 8,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white24,
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  if (controller.text != '') {
                    var secret = await SecretCatApi.addSecret(controller.text);
                    if (secret != null) {
                      // Navigator.pop(context);
                      setState(() {
                        FadeInImage(
                          placeholder:
                              AssetImage('assets/images/hair-spray.gif'),
                          image: AssetImage('assets/images/hair-spray.gif'),
                          fadeInDuration: Duration(milliseconds: 500),
                        );
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("비밀 공유 성공! ${secret.secret}"),
                        ),
                      );
                    }
                  }
                },
                child: Text('업로드하기'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
