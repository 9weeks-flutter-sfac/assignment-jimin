import 'package:flutter/material.dart';

class MusicTile extends StatelessWidget {
  const MusicTile(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.artist,
      required this.playTime});

  final String imgUrl;
  final String title;
  final String artist;
  final String playTime;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        //자르기
        borderRadius: BorderRadius.circular(4),
        child: Image.asset(
          imgUrl,
        ),
      ),
      title: Text(
        title,
        maxLines: 2, //두 줄 이상인 경우 생략
        overflow: TextOverflow.ellipsis, //자를 경우 어떻게 보여 줄 것인지
        style: TextStyle(
          fontWeight: FontWeight.w400,
        ),
      ),
      subtitle: Row(
        children: [
          Icon(
            Icons.check_circle,
            size: 16,
          ),
          SizedBox(width: 4),
          Flexible(
              child: Text(
            artist,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )),
          SizedBox(width: 4),
          Text('·'),
          SizedBox(width: 4),
          Text(playTime),
        ],
      ),
      trailing: Icon(Icons.more_vert),
    );
  }
}
