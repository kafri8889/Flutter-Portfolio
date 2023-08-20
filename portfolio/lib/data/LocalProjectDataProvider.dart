
import 'package:portfolio/data/ProjectUrlType.dart';
import 'package:portfolio/data/model/Project.dart';

class LocalProjectDataProvider {
  static LocalProjectDataProvider? _instance;

  // Private constructor
  LocalProjectDataProvider._();

  static LocalProjectDataProvider getInstance() {
    // Buat instance jika null
    _instance ??= LocalProjectDataProvider._();
    _instance?.values = [
      Project(name: "Musicompose", imgPath: "assets/images/musicompose.png", url: "https://github.com/kafri8889/Musicompose-V2", type: ProjectUrlType.gitHub),
      Project(name: "MathQ", imgPath: "assets/images/mathq.png", url: "https://play.google.com/store/apps/details?id=com.anafthdev.mathq", type: ProjectUrlType.playStore),
    ];
    return _instance!;
  }

  late List<Project> values;

}