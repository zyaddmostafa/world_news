import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';
import 'package:world_news/widget/appicon.dart';
import 'package:world_news/widget/appname.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});
  static String id = newsid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Appicon(
              color: kcolor1,
              size: 40,
            ),
            Appname(
              color: kcolor1,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
