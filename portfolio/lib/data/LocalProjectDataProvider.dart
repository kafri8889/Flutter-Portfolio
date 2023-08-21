
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
      Project(name: "Project Management", imgPath: "assets/images/projman.png", url: "https://play.google.com/store/apps/details?id=com.anafthdev.projectmanagement", type: ProjectUrlType.playStore),
      Project(name: "Bookmark Manager", imgPath: "assets/images/bookman.png", url: "https://play.google.com/store/apps/details?id=com.anafthdev.bookman", type: ProjectUrlType.playStore),
      Project(name: "Compose Material Design 3", imgPath: "assets/images/md3compose.png", url: "https://play.google.com/store/apps/details?id=com.anafthdev.md3compose", type: ProjectUrlType.playStore),
      Project(name: "Saku: Compose Sudoku", imgPath: "assets/images/saku.png", url: "https://github.com/kafri8889/Saku-Compose-Sudoku", type: ProjectUrlType.gitHub),
      Project(name: "Compose Classic Snake Game", imgPath: "assets/images/csnake.png", url: "https://github.com/kafri8889/Compose-Classic-Snake-Game", type: ProjectUrlType.gitHub),
      Project(name: "TicTacToe", imgPath: "assets/images/tictactoe.png", url: "https://github.com/kafri8889/Compose-TicTacToe", type: ProjectUrlType.gitHub),
      Project(name: "Dujer: Duit Manajer", imgPath: "assets/images/dujer.png", url: "https://play.google.com/store/apps/details?id=com.anafthdev.dujer", type: ProjectUrlType.playStore),
      Project(name: "Remind Me", imgPath: "assets/images/remindme.png", url: "https://github.com/kafri8889/Remind-Me", type: ProjectUrlType.gitHub),
      Project(name: "N Puzzle", imgPath: "assets/images/npuzzle.png", url: "https://play.google.com/store/apps/details?id=com.anafthdev.npuzzle", type: ProjectUrlType.playStore),
      Project(name: "Staver: Whatsapp Status Saver", imgPath: "assets/images/staver.png", url: "https://play.google.com/store/apps/details?id=com.anafthdev.staver", type: ProjectUrlType.playStore),
      Project(name: "Calculator Compose", imgPath: "assets/images/calculator.png", url: "https://github.com/kafri8889/Calculator-Compose", type: ProjectUrlType.gitHub),
      Project(name: "Compose Material Component", imgPath: "assets/images/md2compose.png", url: "https://play.google.com/store/apps/details?id=com.anafthdev.jetpackcomposetutorial", type: ProjectUrlType.playStore),
      Project(name: "Material Design 3 Android", imgPath: "assets/images/md3android.png", url: "https://play.google.com/store/apps/details?id=com.anafthdev.materialdesign3", type: ProjectUrlType.playStore),
    ];
    return _instance!;
  }

  late List<Project> values;

}