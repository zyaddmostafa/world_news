import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';
import 'package:world_news/views/feedbackview.dart';
import 'package:world_news/widget/appicon.dart';
import 'package:world_news/widget/appname.dart';
import 'package:world_news/widget/feedbackicon.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 120,
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 60),
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
          feedbackicon()
        ],
      ),
    );
  }
}
