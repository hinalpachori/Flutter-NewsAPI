import 'package:newsapi/model/Article.dart';
import 'package:flutter/material.dart';

class NewscardWidget extends StatelessWidget {
  final Article article;
  const NewscardWidget({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.network(
            '${article.urlToImage}',
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),
        Text(
          article.title,
          style: TextStyle(fontSize: 20),
        ),
        Text(article.description)
      ],
    );
  }
}
