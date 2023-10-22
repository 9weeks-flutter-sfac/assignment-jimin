import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('5일차 과제')),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page2(),
                      ));
                },
                child: Text('1번 과제'),
              ),
              SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page3(),
                    ),
                  );
                },
                child: Text('2번 과제'),
              ),
              SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page4(),
                    ),
                  );
                },
                child: Text('3번 과제'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    List animalList = ['강아지', '고양이', '앵무새', '토끼', '오리', '거위', '원숭이'];
    var scrollController = ScrollController();
    return Scaffold(
      appBar: AppBar(
        title: Text('5일차 과제'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView.builder(
        controller: scrollController,
        itemCount: 7, // 목록에 표시할 항목의 총 수
        itemBuilder: (BuildContext context, int index) {
          // 각 항목을 생성하고 반환하는 함수
          return ListTile(
            title: Container(
              height: 300,
              alignment: Alignment.center,
              child: Text(animalList[index]),
            ), // 예제로 항목을 생성하는 방법
            onTap: () {},
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          scrollController.animateTo(scrollController.position.minScrollExtent,
              duration: Duration(milliseconds: 500), curve: Curves.ease);
        },
        child: Icon(Icons.vertical_align_top),
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  var textController = TextEditingController();
  String inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('5일차 과제'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              style: TextStyle(
                fontSize: 20,
              ),
              controller: textController,
              onChanged: (value) {
                inputText = value;
                setState(() {});
              },
            ),
            Text(
              '$inputText',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          textController.text = '';
          inputText = '';
          setState(() {});
        },
        child: Icon(Icons.close),
      ),
    );
  }
}

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  var iconController = TextEditingController();
  String iconText = '';
  bool sunColorBool = false;
  bool moonColorBool = false;
  bool starColorBool = false;
  Color sunColor = Colors.grey;
  Color moonColor = Colors.grey;
  Color starColor = Colors.grey;

  void changeColor() {
    setState(() {
      sunColorBool == true || iconText == 'Sun'
          ? sunColor = Colors.red
          : sunColor = Colors.grey;
      moonColorBool == true || iconText == 'Moon'
          ? moonColor = Colors.orange
          : moonColor = Colors.grey;
      starColorBool == true || iconText == 'Star'
          ? starColor = Colors.yellow
          : starColor = Colors.grey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('5일차 과제'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.sunny, color: sunColor),
              title: Text('Sun'),
              trailing: IconButton(
                  onPressed: () {
                    sunColorBool = !sunColorBool;
                    changeColor();
                  },
                  icon: Icon(Icons.arrow_right)),
            ),
            ListTile(
              leading: Transform(
                transform: Matrix4.rotationY(3.141592),
                alignment: Alignment.center,
                child: Icon(Icons.brightness_3, color: moonColor),
              ),
              title: Text('Moon'),
              trailing: IconButton(
                  onPressed: () {
                    moonColorBool = !moonColorBool;
                    changeColor();
                  },
                  icon: Icon(Icons.arrow_right)),
            ),
            ListTile(
              leading: Icon(Icons.star, color: starColor),
              title: Text('Star'),
              trailing: IconButton(
                  onPressed: () {
                    starColorBool = !starColorBool;
                    changeColor();
                  },
                  icon: Icon(Icons.arrow_right)),
            ),
            TextField(
              controller: iconController,
              onSubmitted: (value) {
                iconText = value;
                print(iconText);
                changeColor();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sunColorBool = false;
          moonColorBool = false;
          starColorBool = false;
          iconText = '';
          changeColor();
          iconController.text = '';
        },
        child: Icon(Icons.replay),
      ),
    );
  }
}
