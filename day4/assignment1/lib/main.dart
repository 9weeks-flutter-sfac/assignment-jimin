import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  showResultDialog(BuildContext context, var result) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            height: 150,
            child: Center(
                child: Text(
              "$result",
              style: const TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
        );
      },
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController1 = TextEditingController();
    TextEditingController textEditingController2 = TextEditingController();

    int add(int value1, int value2) {
      return value1 + value2;
    }

    int multiple(int value1, int value2) {
      return value1 * value2;
    }

    int minus(int value1, int value2) {
      return value1 - value2;
    }

    double divide(double value1, double value2) {
      return value1 / value2;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('사칙연산'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text('X의 값은?'),
                SizedBox(
                  width: 220,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 48),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: textEditingController1,
                      decoration: const InputDecoration(
                          hintText: 'x값을 입력하세요.',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Text('Y의 값은?'),
                SizedBox(
                  width: 220,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 48),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: textEditingController2,
                      decoration: const InputDecoration(
                          hintText: 'y값을 입력하세요.',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                  ),
                )
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  showResultDialog(
                      context,
                      add(int.parse(textEditingController1.text),
                          int.parse(textEditingController2.text)));
                },
                child: const Text('더하기의 결과값은?!')),
            ElevatedButton(
                onPressed: () {
                  showResultDialog(
                      context,
                      multiple(
                        int.parse(textEditingController1.text),
                        int.parse(textEditingController2.text),
                      ));
                },
                child: const Text('곱하기의 결과값은?!')),
            ElevatedButton(
                onPressed: () {
                  showResultDialog(
                      context,
                      minus(
                        int.parse(textEditingController1.text),
                        int.parse(textEditingController2.text),
                      ));
                },
                child: const Text('빼기의 결과값은?!')),
            ElevatedButton(
                onPressed: () {
                  showResultDialog(
                      context,
                      divide(
                        double.parse(textEditingController1.text),
                        double.parse(textEditingController2.text),
                      ));
                },
                child: const Text('나누기의 결과값은?!'))
          ],
        ),
      ),
    );
  }
}
