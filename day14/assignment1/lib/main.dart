import 'package:assignment1/controller/app_controller.dart';
import 'package:assignment1/view/info_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text('${controller.memos.length}')),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => InfoPage());
                },
                child: Text('Info'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.memos.add('메모');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
