import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/controller/login_controller.dart';
import 'package:assignment1/controller/secret_controller.dart';
import 'package:assignment1/controller/signup_controller.dart';
import 'package:assignment1/controller/upload_controller.dart';
import 'package:assignment1/util/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SecretCat',
      theme: ThemeData(useMaterial3: true),
      getPages: AppPages.pages,
      initialBinding: BindingsBuilder(() {
        Get.put(AuthController());
        Get.lazyPut(() => LoginController());
        Get.lazyPut(() => SignupController());
        Get.put(SecretController(), permanent: true);
        Get.put(UploadController(), permanent: true);
      }),
      initialRoute: '/login',
    );
  }
}
