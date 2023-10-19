import 'package:get/get.dart';

class AppController extends GetxController {
  RxList<String> memos = RxList<String>(); //공유 자원 느낌

  @override
  void onInit() {
    super.onInit();

    once(memos, (newValue) {
      //ever(감시 대상, 바뀌면 할 일)
      //once는 로그인 시 많이 사용함
      print(newValue);
      print('변경 감지: ${memos.length}');
    });

    print('[GetX] AppController 생성');
  }
}
