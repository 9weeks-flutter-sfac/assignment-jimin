import 'package:flutter/material.dart';

class QuizCard extends StatelessWidget {
  const QuizCard(
      {super.key,
      required this.quiz,
      required this.onCorrect,
      required this.onIncorrect});
  final Map<String, dynamic> quiz;
  final Function onCorrect;
  final Function onIncorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 64),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              quiz["question"],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 16),
            ListView.builder(
              itemCount: quiz["options"].length,
              shrinkWrap: true,
              itemBuilder: (context, index) => ElevatedButton(
                onPressed: () {
                  index == quiz["answer"] - 1 ? onCorrect() : onIncorrect();
                },
                child: Text(quiz["options"][index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
