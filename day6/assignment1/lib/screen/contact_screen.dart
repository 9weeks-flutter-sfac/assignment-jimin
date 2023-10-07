import 'package:assignment1/widget/ContectTile.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ContectTile(
          name: '이테디',
          number: '010-1000-1000',
          imgUrl: 'https://picsum.photos/100/100',
        ),
        ContectTile(
          name: '벨라',
          number: '010-1000-2000',
          imgUrl: 'https://picsum.photos/90/90',
        ),
        ContectTile(
          name: '크리스',
          number: '010-1000-3000',
          imgUrl: 'https://picsum.photos/80/80',
        ),
        ContectTile(
          name: '주노',
          number: '010-1000-4000',
          imgUrl: 'https://picsum.photos/70/70',
        ),
        ContectTile(
          name: '해리',
          number: '010-1000-5000',
          imgUrl: 'https://picsum.photos/60/60',
        ),
        ContectTile(
          name: '헬렌',
          number: '010-1000-6000',
          imgUrl: 'https://picsum.photos/50/50',
        ),
        ContectTile(
          name: '신디',
          number: '010-1000-7000',
          imgUrl: 'https://picsum.photos/40/40',
        ),
      ],
    );
  }
}
