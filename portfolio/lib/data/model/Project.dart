
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
}
