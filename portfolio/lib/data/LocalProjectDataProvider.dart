
import 'package:portfolio/data/model/Project.dart';

class LocalProjectDataProvider {
  static LocalProjectDataProvider? _instance;

  // Private constructor
  LocalProjectDataProvider._();

  static LocalProjectDataProvider getInstance() {
    // Buat instance jika null
    _instance ??= LocalProjectDataProvider._();
    _instance?.values = [
      Project(name: "Musicompose", imgPath: "assets/images/musicompose.png"),
      Project(name: "MathQ", imgPath: "assets/images/mathq.png"),
    ];
    return _instance!;
  }

  late List<Project> values;

}