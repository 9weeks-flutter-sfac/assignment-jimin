import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var pageController = PageController();

List<Map<String, String>> words = [
  {"word": "apple", "meaning": "사과", "example": "I want to eat an apple"},
  {"word": "paper", "meaning": "종이", "example": "Could you give me a paper"},
  {
    "word": "resilient",
    "meaning": "탄력있는, 회복력있는",
    "example": "She's a resilient girl"
  },
  {
    "word": "revoke",
    "meaning": "취소하다",
    "example":
        "The authorities have revoked their original decision to allow development of this rural area."
  },
  {
    "word": "withdraw",
    "meaning": "철회하다",
    "example":
        "After lunch, we withdrew into her office to finish our discussion in private."
  },
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child: PageView.builder(
            controller: pageController,
            itemCount: words.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    words[index]["word"]!,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -1,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    words[index]["meaning"]!,
                    style: TextStyle(
                        letterSpacing: -1,
                        color: Colors.grey,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '"${words[index]["example"]!}"',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: -1,
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () {
                  pageController.previousPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                },
                child: Icon(
                  Icons.keyboard_arrow_left,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  pageController.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                },
                child: Icon(
                  Icons.keyboard_arrow_right,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
