import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});
  static String id = newsid;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        'news view',
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}
