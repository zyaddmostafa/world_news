import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';

class Appname extends StatelessWidget {
  const Appname({super.key, required this.color, required this.size});
  final Color color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'World',
          style: TextStyle(color: color, fontSize: size),
        ),
        Text(
          'News',
          style: TextStyle(color: color, fontSize: size),
        ),
      ],
    );
  }
}
