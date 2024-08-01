import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';
import 'package:world_news/widget/categorylistview.dart';
import 'package:world_news/widget/customappbar.dart';
import 'package:world_news/widget/newscard.dart';
import 'package:world_news/widget/newscardlistview.dart';

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
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 25,
            ),
          ),
          Newscardlistview(),
        ],
      ),
    );
  }
}
