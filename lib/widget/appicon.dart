import 'package:flutter/material.dart';

class Appicon extends StatelessWidget {
  const Appicon({super.key, required this.color, required this.size});
  final Color color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.newspaper,
      size: size,
      color: color,
    );
  }
}
