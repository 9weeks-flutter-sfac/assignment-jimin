import 'package:assignment2/controller/app_controller.dart';
import 'package:assignment2/controller/app_setting_controller.dart';
import 'package:assignment2/view/app_setting_page.dart';
import 'package:assignment2/view/store_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppController());
    var settingController = Get.put(AppSettingController());
    return GetMaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text('Current coin: ${controller.coin.value}')),
              Icon(
                FontAwesomeIcons.bitcoin,
                size: 96.0,
                color: Colors.yellow.shade700,
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => StorePage());
                },
                child: Text('상점으로 이동하기'),
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => AppSettingPage());
                },
                child: Text('AppSettingPage로 이동하기'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
