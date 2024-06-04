import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/services/get_news_headline.dart';
import 'package:news/views/widgets/custom_news_list.dart';

class NewsListBuilder extends StatefulWidget {
  final String category;
  const NewsListBuilder({super.key, required this.category});

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  

  var future;
  @override
  void initState() {
    super.initState();

    future = NewsService(Dio()).getNewsHeadlines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future ,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CustomNewsList(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops there was an error!'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: CircularProgressIndicator(),
                  )
                ],
              ),
            );
          }
        });
  }
}
