import 'package:flutter/material.dart';
import 'package:world_news/models/articalmodel.dart';
import 'package:world_news/widget/newscard.dart';

class Newscardlistview extends StatelessWidget {
  const Newscardlistview({super.key, required this.articals});
  final List<Articalmodel> articals;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: articals.length,
        itemBuilder: (context, index) {
          return Newscard(
            articalmodel: articals[index],
          );
        });
  }
}
