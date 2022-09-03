import 'package:flutter/material.dart';
import 'package:newsapi/model/Article.dart';
import 'package:newsapi/widget/NewscardWidget.dart';

class Newsdescription extends StatelessWidget {
  final Article data;
  const Newsdescription({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewscardWidget(article: data),
    );
  }
}
