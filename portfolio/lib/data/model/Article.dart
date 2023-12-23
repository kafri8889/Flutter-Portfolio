import 'dart:convert';

class Article {
  String name;
  String imgPath;
  String url;
  String date;

  Article({
    required this.name,
    required this.imgPath,
    required this.url,
    required this.date
  });
  
  factory Article.fromJson(Map<String, dynamic> json) => Article(
      name: json["name"],
      imgPath: json["imgPath"],
      url: json["url"],
      date: json["date"]
  );
}

List<Article> articlesFromJson(String str) => (json.decode(str) as List)
    .map((e) => Article.fromJson(e))
    .toList();
