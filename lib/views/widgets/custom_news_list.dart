import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/views/widgets/news_tile.dart';

class CustomNewsList extends StatelessWidget {
  const CustomNewsList({
    super.key,
    required this.articles,
  });
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) => NewsTile(articleModel: articles[index]),
    ));

    // ListView.builder(
    //   physics: NeverScrollableScrollPhysics(),
    //   shrinkWrap: true,
    //   itemCount: 10,
    //   itemBuilder: (context, index) => NewsTile(),
    // );
  }
}
