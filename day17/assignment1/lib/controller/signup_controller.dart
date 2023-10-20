import 'package:assignment1/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var pwController = TextEditingController();
  var pw2Controller = TextEditingController();

  signup() async {
    Get.find<AuthController>().signup(
      usernameController.text,
      emailController.text,
      pwController.text,
      pw2Controller.text,
    );
  }
}
