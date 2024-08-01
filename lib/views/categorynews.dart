import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';
import 'package:world_news/widget/customappbar.dart';
import 'package:world_news/widget/newcardlistbuilder.dart';

class Categorynews extends StatelessWidget {
  const Categorynews({super.key});
  static String id = categoryviewid;

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Customappbar(),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                arg.toString(),
                style: const TextStyle(
                  color: kcolor1,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 25,
            ),
          ),
          Newcardlistbuilder(categoryname: arg.toString())
        ],
      ),
    );
  }
}
