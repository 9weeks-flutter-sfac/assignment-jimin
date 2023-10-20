import 'package:assignment1/view/page/secret_page.dart';
import 'package:assignment1/view/page/setting_page.dart';
import 'package:assignment1/view/page/upload_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  static const route = '/main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '비밀 듣는 고양이',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 40),
            Card(
              elevation: 4,
              child: ListTile(
                title: const Text('비밀 보기'),
                onTap: () => Get.toNamed(SecretPage.route),
              ),
            ),
            SizedBox(height: 12),
            Card(
              elevation: 4,
              child: ListTile(
                title: const Text('비밀 올리기'),
                onTap: () => Get.toNamed(UploadPage.route),
              ),
            ),
            SizedBox(height: 12),
            Card(
              elevation: 4,
              child: ListTile(
                title: const Text('앱 설정'),
                onTap: () => Get.toNamed(SettingPage.route),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
