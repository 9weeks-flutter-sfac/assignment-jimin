import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/model/profile.dart';
import 'package:assignment1/util/api_routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UploadController extends GetxController {
  var inputController = TextEditingController();
  final RxBool isSwitched = false.obs;
  final AuthController authController = Get.find<AuthController>();

  Dio dio = Dio();

  upload() async {
    if (inputController.text.isEmpty) return;
    if (isSwitched.value) {
      var res = await dio.post(ApiRoutes.upload, data: {
        'secret': inputController.text,
        'authorName': authController.profile?.username
      });
      print(authController.profile?.username);
    } else {
      var res = await dio.post(ApiRoutes.upload, data: {
        'secret': inputController.text,
      });
      print(authController.profile?.username);
    }
    inputController.text = '';
  }
}
