import 'package:flutter/material.dart';
import 'package:world_news/models/articalmodel.dart';

class Newscard extends StatelessWidget {
  const Newscard({super.key, required this.articalmodel});
  final Articalmodel articalmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Card(
        shadowColor: Colors.grey,
        child: Column(
          children: [
            Image.network(
              articalmodel.image ??
                  'https://upload.wikimedia.org/wikipedia/commons/7/75/No_image_available.png',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                articalmodel.title,
                maxLines: 2,
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                articalmodel.subtitle ?? '',
                style: const TextStyle(color: Colors.grey, fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
