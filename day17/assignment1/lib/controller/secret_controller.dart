import 'package:assignment1/model/secret.dart';
import 'package:assignment1/util/api_routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecretController extends GetxController {
  final RxList<Secret> _secrets = <Secret>[].obs;
  Dio dio = Dio();

  List<Secret> get secrets => _secrets;

  fetchSecrets() async {
    var res = await dio.get(ApiRoutes.secrets);
    var items = List<Map<String, dynamic>>.from(res.data['items']);
    _secrets(items.map((e) => Secret.fromMap(e)).toList());
  }

  @override
  void onInit() {
    super.onInit();
    fetchSecrets();
  }
}
