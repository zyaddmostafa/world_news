import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';

class Appname extends StatelessWidget {
  const Appname({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'World',
          style: TextStyle(color: color, fontSize: 30),
        ),
        Text(
          'News',
          style: TextStyle(color: color, fontSize: 30),
        ),
      ],
    );
  }
}
