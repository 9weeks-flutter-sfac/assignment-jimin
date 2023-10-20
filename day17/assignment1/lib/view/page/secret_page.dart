import 'package:assignment1/controller/secret_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecretPage extends GetView<SecretController> {
  const SecretPage({super.key});
  static const route = '/secret';

  @override
  Widget build(BuildContext context) {
    var pageController = PageController(viewportFraction: 0.8);
    return Scaffold(
      body: Obx(
        () => PageView.builder(
          controller: pageController,
          itemCount: controller.secrets.length,
          itemBuilder: (context, index) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  controller.secrets[index].secret,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  controller.secrets[index].authorName ?? '익명',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {
                pageController.jumpToPage(0);
              },
              child: Icon(Icons.keyboard_double_arrow_left),
            ),
            FloatingActionButton(
              onPressed: () {
                pageController.jumpToPage(controller.secrets.length - 1);
              },
              child: Icon(Icons.keyboard_double_arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}
