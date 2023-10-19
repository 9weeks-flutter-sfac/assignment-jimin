import 'package:assignment2/controller/app_controller.dart';
import 'package:assignment2/controller/app_setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<AppController>();
    var settingController = Get.find<AppSettingController>();
    void stopTimer() {
      timer.cancel();
      controller.coin = RxInt(0);
    }

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('코인'),
            Obx(() => Text('현재 보유한 코인 : ${controller.coin.value}')),
            TextButton(
              onPressed: () {
                controller.coin.value = 0;
                //controller.coin(0)
              },
              child: Text('코인 리셋'),
            ),
          ],
        ),
      ),
    );
  }
}

int count = 0;
bool isStart = true;
late Timer timer;
