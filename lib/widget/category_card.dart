import 'package:flutter/material.dart';
import 'package:world_news/models/categorymodel.dart';
import 'package:world_news/views/categorynews.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({
    super.key,
    required this.categorymodel,
  });
  final Categorymodel categorymodel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: SizedBox(
        height: 80,
        width: 170,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              Categorynews.id,
              arguments: categorymodel.name,
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(categorymodel.image),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Text(
                categorymodel.name,
                style: const TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
