import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:world_news/models/articalmodel.dart';
import 'package:world_news/services/newsservice.dart';
import 'package:world_news/widget/newscardlistview.dart';

class Newcardlistbuilder extends StatefulWidget {
  const Newcardlistbuilder({super.key, required this.categoryname});
  final String categoryname;

  @override
  State<Newcardlistbuilder> createState() => _NewcardlistbuilderState();
}

class _NewcardlistbuilderState extends State<Newcardlistbuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    future = Newsservice().getnews(categoryname: widget.categoryname);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articalmodel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Newscardlistview(
              articals: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text(
                'there was an error',
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }
        });
  }
}
