import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';
import 'package:world_news/widget/categorylistview.dart';
import 'package:world_news/widget/customappbar.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});
  static String id = newsid;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Customappbar(),
          ),
          SliverToBoxAdapter(
            child: Categorylistview(),
          )
        ],
      ),
    );
  }
}
