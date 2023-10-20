import 'package:assignment1/controller/login_controller.dart';
import 'package:assignment1/view/page/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: controller.idController,
                  decoration: InputDecoration(
                    hintText: ("아이디를 입력하세요"),
                  ),
                ),
                TextField(
                  controller: controller.pwController,
                  decoration: InputDecoration(
                    hintText: ("비밀번호를 입력하세요"),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: controller.login,
                  child: const Text('LOGIN'),
                ),
                TextButton(
                  onPressed: () => Get.toNamed(SignupPage.route),
                  child: Text('회원가입 하기'),
                ),
              ],
            )),
      ),
    );
  }
}
