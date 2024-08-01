import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:world_news/models/articalmodel.dart';

class Newsservice {
  final dio = Dio();

  Future<List<Articalmodel>> getnews({required String categoryname}) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$categoryname&apiKey=e7f19985f75b403a87387be08666dc1c',
      );
      Map<String, dynamic> jsonrespnse = response.data;
      List<dynamic> articales = jsonrespnse['articles'];
      List<Articalmodel> articalelist = [];

      for (var artical in articales) {
        Articalmodel articalmodel = Articalmodel.fromjson(artical);
        articalelist.add(articalmodel);
      }
      return articalelist;
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}
