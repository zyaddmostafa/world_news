import 'package:flutter/material.dart';
import 'package:world_news/widget/newscard.dart';

class Newscardlistview extends StatelessWidget {
  const Newscardlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Newscard();
        });
  }
}
