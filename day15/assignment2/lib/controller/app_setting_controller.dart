import 'package:get/get.dart';

class AppSettingController extends GetxController {
  bool isSoundOn = false;
  bool isNotificationOn = false;
  String appVersion = 'appVersion';
  String appName = 'appName';
  String appAuthor = 'appAuthor';
  String appPackageName = 'appPackageName';
  DateTime? lastUpdated;
}
