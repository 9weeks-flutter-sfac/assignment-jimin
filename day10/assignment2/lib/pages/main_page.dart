import 'package:assignment2/pages/author_page.dart';
import 'package:assignment2/pages/secret_page.dart';
import 'package:assignment2/pages/upload_page.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  'assets/images/hair-spray.gif',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "쉿! 프레이",
                style: TextStyle(color: Colors.white, fontSize: 34),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                tileColor: Colors.white,
                title: Text('비밀 보기'),
                subtitle: Text('놀러가기'),
                trailing: CircleAvatar(
                  backgroundColor: Colors.white38,
                  backgroundImage: AssetImage(
                    'assets/images/hair-spray.gif',
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecretPage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 24,
              ),
              ListTile(
                tileColor: Colors.white,
                title: Text('작성자들 보기'),
                subtitle: Text('놀러가기'),
                trailing: CircleAvatar(
                  backgroundColor: Colors.white38,
                  backgroundImage: AssetImage(
                    'assets/images/hair-spray.gif',
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AuthorPage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 24,
              ),
              ListTile(
                tileColor: Colors.white,
                title: Text('비밀 공유'),
                subtitle: Text('놀러가기'),
                trailing: CircleAvatar(
                  backgroundColor: Colors.white38,
                  backgroundImage: AssetImage(
                    'assets/images/hair-spray.gif',
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UploadPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
