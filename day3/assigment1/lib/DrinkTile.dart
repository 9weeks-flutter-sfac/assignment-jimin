import 'package:flutter/material.dart';

class DrinkTile extends StatelessWidget {
  const DrinkTile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.price,
      required this.imgUrl});

  final String imgUrl;
  final String title;
  final String subTitle;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 48,
            backgroundImage: AssetImage(imgUrl),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, //시작점 정렬
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                // price.toString() + '원', //int를 string으로 치환
                "$price원",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
