import 'package:assignment1/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends GetView<SignupController> {
  const SignupPage({super.key});
  static const route = '/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller.usernameController,
          ),
          TextField(
            controller: controller.emailController,
          ),
          TextField(
            controller: controller.pwController,
          ),
          TextField(
            controller: controller.pw2Controller,
          ),
          ElevatedButton(
            onPressed: controller.signup,
            child: Text('회원가입'),
          ),
        ],
      ),
    );
  }
}
