import 'dart:convert';

import 'package:http/http.dart';
import 'package:newsapi/model/Article.dart';

class Apiservice {
  final endpoint =
      "https://newsapi.org/v2/everything?q=tesla&from=2022-08-03&sortBy=publishedAt&apiKey=27aafa002a324c3fb9d80fe2f2c69977";
  Future<List<Article>> getArticle() async {
    Response response = await get(Uri.parse(endpoint));

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['article'];
      List<Article> article =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return article;
    }

    {
      throw 'Data not fount';
    }
  }
}
