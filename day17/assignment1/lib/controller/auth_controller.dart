import 'package:assignment1/model/profile.dart';
import 'package:assignment1/util/api_routes.dart';
import 'package:assignment1/view/page/main_page.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final Rxn<Profile> _profile = Rxn<Profile>();
  Dio dio = Dio();

  Profile? get profile => _profile.value;

  login(String id, String pw) async {
    var res =
        await dio.post(ApiRoutes.login, data: {'identity': id, 'password': pw});
    if (res.statusCode == 200) {
      var data = Map<String, dynamic>.from(res.data['record']);
      _profile(Profile.fromMap(data));
    }
  }

  signup(String username, String email, String pw, String pw2) async {
    var res = await dio.post(ApiRoutes.signup, data: {
      'username': username,
      'email': email,
      'password': pw,
      'passwordConfirm': pw2
    });
    _profile(Profile.fromMap(res.data));
    print(res.data);
  }

  logout() {
    _profile.value = null;
  }

  _handleOnProfileChanged(value) {
    if (value != null) {
      Get.toNamed(MainPage.route);
      return;
    }
    Get.toNamed('/login');
    return;
  }

  @override
  void onInit() {
    super.onInit();
    ever(_profile, _handleOnProfileChanged);
  }
}
