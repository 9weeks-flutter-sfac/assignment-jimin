import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

var backgroundImg = "assets/obverse_logo.png";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: FlipCard(
            fill: Fill
                .fillBack, // Fill the back side of the card to make in the same size as the front.
            direction: FlipDirection.HORIZONTAL, // default
            side: CardSide.FRONT, // The side to initially display.
            front: Container(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(
                        'assets/obverse_logo.png',
                        height: 550,
                        fit: BoxFit.contain,

                        // fit: BoxFit.,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/obverse_ymsco.png",
                                height: 70,
                                fit: BoxFit.fitHeight,
                                alignment: Alignment.bottomLeft,
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Image.asset(
                                "assets/obverse_barcode.png",
                                height: 90,
                                fit: BoxFit.fitHeight,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: '공도윤',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black)),
                                TextSpan(
                                    text: 'Cindy / 연구원\n\n',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black)),
                                TextSpan(
                                    text: 'M.',
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: '010-4157-4252\n',
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                    text: 'E.',
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: 'cindy@ymsco.kr\n',
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                    text: 'W.',
                                    style: TextStyle(
                                        color: Colors.blue[900],
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: 'https://ymsco.kr\n\n',
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                    text:
                                        '서울시 강서구 마곡중앙 2로 11\nM밸리 W TOWER ||| 303-305호',
                                    style: TextStyle(color: Colors.grey[800])),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 170,
                          ),
                          Image.asset(
                            "assets/obverse_pilo.png",
                            height: 40,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.bottomRight,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            "assets/obverse_jangjeon.png",
                            height: 20,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.bottomRight,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 20,
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(color: Colors.blue[900]),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            back: Container(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/reverse__barcode.png",
                        height: 400,
                        fit: BoxFit.fitWidth,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          "assets/reverse_insideout.png",
                          height: 35,
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '공도윤\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black)),
                                  TextSpan(
                                      text: 'M.',
                                      style: TextStyle(
                                          color: Colors.orange[900],
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: '010-4157-4252\n',
                                      style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                      text: 'E.',
                                      style: TextStyle(
                                          color: Colors.orange[900],
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: 'cindy@ymsco.kr\n',
                                      style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                      text: 'W.',
                                      style: TextStyle(
                                          color: Colors.orange[900],
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: 'https://ymsco.kr\n',
                                      style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                      text:
                                          '서울시 강서구 마곡중앙 2로 11\nM밸리 W TOWER ||| 303-305호',
                                      style:
                                          TextStyle(color: Colors.grey[800])),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/reverse_sniperfactory.png",
                                height: 30,
                                fit: BoxFit.fitWidth,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                "assets/reverse__VKJ.png",
                                height: 30,
                                fit: BoxFit.fitWidth,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
