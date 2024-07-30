import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';

class Appicon extends StatelessWidget {
  const Appicon({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.newspaper,
      size: 70,
      color: color,
    );
  }
}
