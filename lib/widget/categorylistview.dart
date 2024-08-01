import 'package:flutter/material.dart';
import 'package:world_news/models/categorymodel.dart';
import 'package:world_news/widget/category_card.dart';

class Categorylistview extends StatefulWidget {
  const Categorylistview({super.key});

  @override
  State<Categorylistview> createState() => _CategorylistviewState();
}

class _CategorylistviewState extends State<Categorylistview> {
  final List<Categorymodel> category = [
    Categorymodel(image: "assets/business.avif", name: "business"),
    Categorymodel(image: "assets/entertaiment.avif", name: "entertainment"),
    Categorymodel(image: "assets/general.avif", name: "general"),
    Categorymodel(image: "assets/health.avif", name: "health"),
    Categorymodel(image: "assets/science.avif", name: "science"),
    Categorymodel(image: "assets/sports.avif", name: "sports"),
    Categorymodel(image: "assets/technology.jpeg", name: "technology"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: category.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categorycard(
            categorymodel: category[index],
          );
        },
      ),
    );
  }
}
