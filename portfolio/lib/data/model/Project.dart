
import '../ProjectUrlType.dart';

class Project {
  String name;
  String imgPath;
  String url;
  ProjectUrlType type;

  Project({
    required this.name,
    required this.imgPath,
    required this.url,
    required this.type
  });
}
