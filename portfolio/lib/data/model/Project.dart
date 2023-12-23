
import 'dart:convert';

import '../ProjectUrlType.dart';

class Project {
  String title;
  String imgPath;
  String url;
  String description;
  ProjectUrlType type;

  Project({
    required this.title,
    required this.description,
    required this.imgPath,
    required this.url,
    required this.type
  });

  factory Project.fromJson(Map<String, dynamic> json) => Project(
      title: json["title"],
      description: json["description"],
      imgPath: json["imgPath"],
      url: json["url"],
      type: switch (json["type"]) {
        "gitHub" => ProjectUrlType.gitHub,
        "playStore" => ProjectUrlType.playStore,
        _ => ProjectUrlType.gitHub,
      }
  );
}

List<Project> projectsFromJson(String str) => (json.decode(str) as List)
    .map((e) => Project.fromJson(e))
    .toList();
