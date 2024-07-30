import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';

class Custombuttom extends StatelessWidget {
  const Custombuttom({super.key, required this.buttomname});
  final String buttomname;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration:
          BoxDecoration(color: kcolor1, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          buttomname,
          style: const TextStyle(color: kcolor2, fontSize: 20),
        ),
      ),
    );
  }
}
