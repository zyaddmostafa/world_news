import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';
import 'package:world_news/widget/appicon.dart';
import 'package:world_news/widget/appname.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 120,
        ),
        IconButton(
          onPressed: () {},
          icon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz_outlined,
              size: 30,
            ),
          ),
        ),
        const Padding(
          padding: const EdgeInsets.only(left: 50),
          child: const Row(
            children: [
              const Appicon(
                color: kcolor1,
                size: 45,
              ),
              const Appname(
                color: kcolor1,
                size: 20,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.feedback,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}
