import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  const OptionCard(
      {super.key,
      required this.imgUrl,
      required this.foodName,
      required this.onTap});

  final String imgUrl;
  final String foodName;
  final VoidCallback onTap; //Function으로 해도 됨

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.network(
                imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            Text(foodName),
            Text('[담기]'),
          ],
        ),
      ),
    );
  }
}
