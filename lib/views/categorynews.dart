import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';
import 'package:world_news/widget/appicon.dart';
import 'package:world_news/widget/appname.dart';
import 'package:world_news/widget/customappbar.dart';
import 'package:world_news/widget/feedbackicon.dart';
import 'package:world_news/widget/newcardlistbuilder.dart';

class Categorynews extends StatelessWidget {
  const Categorynews({super.key});
  static String id = categoryviewid;

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: const EdgeInsets.only(right: 10),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Appicon(color: kcolor1, size: 40),
              Appname(color: kcolor1, size: 20),
              feedbackicon(),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 25,
            ),
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
