import 'package:assignment2/controller/app_setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSettingPage extends StatelessWidget {
  const AppSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var settingController = Get.find<AppSettingController>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('isSoundOn: ${settingController.isSoundOn}'),
            Text('isNotificationOn: ${settingController.isNotificationOn}'),
            Text('appVersion: ${settingController.appVersion}'),
            Text('appName: ${settingController.appName}'),
            Text('appAuthor: ${settingController.appAuthor}'),
            Text('appPackageName: ${settingController.appPackageName}'),
            Text('lastUpdated: ${settingController.lastUpdated}'),
          ],
        ),
      ),
    );
  }
}
