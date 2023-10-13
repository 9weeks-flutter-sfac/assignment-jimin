import 'package:get/get.dart';
import 'dart:async';

class AppController extends GetxController {
  RxInt coin = RxInt(0);
  late Timer timer;

  @override
  void onInit() {
    super.onInit();
    print('[GetX] AppController 생성');

    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      coin++;
      print(coin);
    });
    ever(coin, (newValue) {
      if (coin == 10) {
        Get.snackbar(
          '코인 10개 돌파',
          '축하합니다!',
        );
      }
    });
  }
}
