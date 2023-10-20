import 'package:assignment1/view/page/login_page.dart';
import 'package:assignment1/view/page/main_page.dart';
import 'package:assignment1/view/page/secret_page.dart';
import 'package:assignment1/view/page/setting_page.dart';
import 'package:assignment1/view/page/signup_page.dart';
import 'package:assignment1/view/page/upload_page.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final pages = [
    GetPage(name: MainPage.route, page: () => const MainPage()),
    GetPage(name: '/login', page: () => const LoginPage()),
    GetPage(name: SecretPage.route, page: () => const SecretPage()),
    GetPage(name: SettingPage.route, page: () => const SettingPage()),
    GetPage(name: SignupPage.route, page: () => const SignupPage()),
    GetPage(name: UploadPage.route, page: () => const UploadPage()),
  ];
}
