import 'dart:convert';

import 'package:assignment4/model/activity.dart';
import 'package:assignment4/model/advice_slip.dart';
import 'package:assignment4/model/cat_fact.dart';
import 'package:assignment4/model/meow_facts.dart';
import 'package:dio/dio.dart';

void main() async {
  Dio dio = Dio();

  getMeow() async {
    var url = 'https://meowfacts.herokuapp.com/';
    for (var i = 0; i < 10; i++) {
      var res = await dio.get(url);
      if (res.statusCode == 200) {
        var meow = MeowFacts.fromMap(res.data);
        print(meow);
      }
    }
  }

  getCat() async {
    var url = 'https://catfact.ninja/fact';
    var res = await dio.get(url);
    if (res.statusCode == 200) {
      var cat = CatFact.fromMap(res.data);
      var fromFact = CatFact.formFact(res.data["fact"]);
      print('${cat.fact}, ${cat.length}');
      print(cat);
      print(fromFact);
    }
  }

  getAdvice() async {
    var url = 'https://api.adviceslip.com/advice';
    var res = await dio.get(url);
    if (res.statusCode == 200) {
      print(res.data);
      print(res.data.runtimeType);
      var adv1 = jsonDecode(res.data)['slip'];
      var adv2 = AdviceSlip.fromMap(adv1);
      print(adv1);
      print(adv1.runtimeType);
      print(adv2);
      print(adv2.runtimeType);
    }
  }

  getActivity() async {
    var url = 'https://www.boredapi.com/api/activity';
    var res = await dio.get(url);
    if (res.statusCode == 200) {
      var act = Activity.fromMap(res.data);

      print(act);
    }
  }

  await getActivity();
}
