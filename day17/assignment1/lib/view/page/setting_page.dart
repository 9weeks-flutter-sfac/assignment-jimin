import 'package:assignment1/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends GetView<AuthController> {
  const SettingPage({super.key});
  static const route = '/setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text(
              controller.profile!.username,
            ),
            subtitle: Text(controller.profile!.name),
          ),
          ElevatedButton(
            onPressed: controller.logout,
            child: const Text('로그아웃'),
          ),
        ],
      ),
    );
  }
}
