import 'package:flutter/material.dart';

class ContectTile extends StatelessWidget {
  const ContectTile(
      {super.key,
      required this.name,
      required this.number,
      required this.imgUrl});

  final String name;
  final String number;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text(number),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
      ),
      trailing: Icon(Icons.call),
    );
  }
}
