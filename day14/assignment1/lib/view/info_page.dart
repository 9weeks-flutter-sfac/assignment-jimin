import 'package:assignment1/controller/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<AppController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Info'),
      ),
      body: Center(
        child: Text('${controller.memos.length}개 있음'),
      ),
    );
  }
}
