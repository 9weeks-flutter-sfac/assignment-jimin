import 'package:assignment1/page/contact_detail_page.dart';
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
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ContactDetailPage(
              name: name,
              number: number,
              imgUrl: imgUrl,
            ),
          ),
        );
      },
      title: Text(name),
      subtitle: Text(number),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
      ),
      trailing: Icon(Icons.call),
    );
  }
}
