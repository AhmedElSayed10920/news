class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String articleUrl;
  ArticleModel( {
    required this.image,
    required this.title,
    required this.subTitle,
    required this.articleUrl,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        image: json['urlToImage'],
        title: json['title'],
        subTitle: json['description'],
        articleUrl:json['url']);
  }
}
