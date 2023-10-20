import 'package:assignment1/controller/upload_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UploadPage extends GetView<UploadController> {
  const UploadPage({super.key});
  static const route = '/upload';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('업로드 페이지'),
            TextField(
              controller: controller.inputController,
              maxLines: 10,
              minLines: 8,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white24,
              ),
            ),
            Row(
              children: [
                Text('익명'),
                Obx(
                  () => Switch(
                    value: controller.isSwitched.value,
                    onChanged: (value) {
                      controller.isSwitched.value = value;
                    },
                  ),
                ),
                Text('실명')
              ],
            ),
            ElevatedButton(
              onPressed: controller.upload,
              child: Text('업로드'),
            ),
          ],
        ),
      ),
    );
  }
}
