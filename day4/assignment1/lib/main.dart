import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: calculation(),
    );
  }
}

class calculation extends StatelessWidget {
  const calculation({super.key});

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
    int x = 0;
    int y = 0;
    var result = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '사칙연산',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text('X의 값은?'),
                SizedBox(
                  width: 240,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 48),
                    child: TextField(
                      onChanged: (value) {
                        x = int.parse(value);
                      },
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
                  width: 240,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 48),
                    child: TextField(
                      onChanged: (value) {
                        y = int.parse(value);
                      },
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
                  result = x + y;
                  showResultDialog(context, result);
                },
                child: const Text(
                  '더하기의 결과값은?!',
                  style: TextStyle(fontSize: 16),
                )),
            ElevatedButton(
                onPressed: () {
                  result = x * y;
                  showResultDialog(context, result);
                },
                child: const Text(
                  '곱하기의 결과값은?!',
                  style: TextStyle(fontSize: 16),
                )),
            ElevatedButton(
                onPressed: () {
                  result = x - y;
                  showResultDialog(context, result);
                },
                child: const Text(
                  '빼기의 결과값은?!',
                  style: TextStyle(fontSize: 16),
                )),
            ElevatedButton(
                onPressed: () {
                  result = (x / y).toInt();
                  showResultDialog(context, result);
                },
                child: const Text(
                  '나누기의 결과값은?!',
                  style: TextStyle(fontSize: 16),
                ))
          ],
        ),
      ),
    );
  }
}
