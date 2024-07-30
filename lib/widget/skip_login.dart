import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';
import 'package:world_news/views/news_view.dart';

class SkipLogin extends StatelessWidget {
  const SkipLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          ' Skip & Login as Guest ',
          style: TextStyle(color: kcolor1, fontSize: 22),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: kcolor1),
          child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, NewsView.id);
              },
              icon: const Icon(
                Icons.arrow_forward,
                color: kcolor2,
              )),
        )
      ],
    );
  }
}
