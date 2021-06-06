import 'dart:convert';

class ModelNewsArticle {
  String title;
  String publishedAt;
  String description;
  String url;
  String urlToImage;

  ModelNewsArticle({
    required this.title,
    required this.publishedAt,
    required this.description,
    required this.url,
    required this.urlToImage,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'publishedAt': publishedAt,
      'description': description,
      'url': url,
      'urlToImage': urlToImage,
    };
  }

  factory ModelNewsArticle.fromJson(Map<String, dynamic> json) {
    return ModelNewsArticle(
      title: json['title'],
      publishedAt: json['publishedAt'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
    );
  }

  String toJson() => json.encode(toMap());
}
