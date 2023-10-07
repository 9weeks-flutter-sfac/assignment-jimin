import 'package:assignment1/widget/ContectTile.dart';
import 'package:flutter/material.dart';

class ContactDetailPage extends StatelessWidget {
  const ContactDetailPage(
      {super.key,
      required this.name,
      required this.number,
      required this.imgUrl});
  final String name;
  final String number;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(children: [
        Image.network(
          imgUrl,
          width: double.infinity,
          height: 240,
          fit: BoxFit.cover,
        ),
        ContectTile(
          name: name,
          number: number,
          imgUrl: imgUrl,
        ),
      ]),
    );
  }
}
