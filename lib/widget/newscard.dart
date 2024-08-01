import 'package:flutter/material.dart';

class Newscard extends StatelessWidget {
  const Newscard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Card(
        shadowColor: Colors.grey,
        child: Column(
          children: [
            Image.network(
                'https://static.guim.co.uk/sys-images/Sport/Pix/pictures/2010/12/2/1291294801429/2022-World-Cup-006.jpg'),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: const Text(
                'World Cup 2018 and 2022: every country which has ever hosted the championship',
                maxLines: 2,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: const Text(
                'World Cup 2018 and 2022: every country which has ever hosted the championship',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
