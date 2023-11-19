
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
      Project(
          title: "Musicompose",
          description: "A music application created using the Jetpack Compose framework. This application has features such as playlists, favorites, timers, changing the order of songs, etc.",
          imgPath: "assets/images/musicompose.png",
          url: "https://github.com/kafri8889/Musicompose-V2",
          type: ProjectUrlType.gitHub
      ),
      Project(
          title: "MathQ",
          description: "Math puzzle app. Consists of the easiest to the most difficult questions. In this app you will be given a picture, and you have to find the answer, if you can't find the answer, you can use hints.",
          imgPath: "assets/images/mathq.png",
          url: "https://play.google.com/store/apps/details?id=com.anafthdev.mathq",
          type: ProjectUrlType.playStore
      ),
      Project(
          title: "Project Management",
          description: "Project management application. Create tasks and subtasks in your project creation and monitor the progress, you can also add deadlines for projects or tasks, and create reminders to work on projects, tasks, and subtasks.",
          imgPath: "assets/images/projman.png",
          url: "https://play.google.com/store/apps/details?id=com.anafthdev.projectmanagement",
          type: ProjectUrlType.playStore
      ),
      Project(
          title: "Bookmark Manager",
          description: "A bookmarking application that is useful for saving urls, you can also group bookmarks with the Bookmark Collection feature. Don't be afraid to lose your bookmarks, because you can also back up and restore bookmarks.",
          imgPath: "assets/images/bookman.png",
          url: "https://play.google.com/store/apps/details?id=com.anafthdev.bookman",
          type: ProjectUrlType.playStore
      ),
      Project(
          title: "Compose Material Design 3",
          description: "An application to preview components from Material Design 3 in Jetpack Compose. This application also has features to customize components such as adding round corners, changing colors, etc.",
          imgPath: "assets/images/md3compose.png",
          url: "https://play.google.com/store/apps/details?id=com.anafthdev.md3compose",
          type: ProjectUrlType.playStore
      ),
      Project(
          title: "Saku: Compose Sudoku",
          description: "Sudoku puzzle app. This application is made using Jetpack Compose and has many features such as pencil, print board to pdf, undo/redo, highlight same number, etc.",
          imgPath: "assets/images/saku.png",
          url: "https://github.com/kafri8889/Saku-Compose-Sudoku",
          type: ProjectUrlType.gitHub
      ),
      Project(
          title: "Compose Classic Snake Game",
          description: "Classic snake game app, in this app you can set movement delay, easing animation, easing animation delay, and set how big the tiles are.",
          imgPath: "assets/images/csnake.png",
          url: "https://github.com/kafri8889/Compose-Classic-Snake-Game",
          type: ProjectUrlType.gitHub
      ),
      Project(
          title: "TicTacToe",
          description: "TicTacToe App",
          imgPath: "assets/images/tictactoe.png",
          url: "https://github.com/kafri8889/Compose-TicTacToe",
          type: ProjectUrlType.gitHub
      ),
      // Project(
      //     title: "Dujer: Duit Manajer",
      //     description: "",
      //     imgPath: "assets/images/dujer.png",
      //     url: "https://play.google.com/store/apps/details?id=com.anafthdev.dujer",
      //     type: ProjectUrlType.playStore
      // ),
      // Project(
      //     title: "Remind Me",
      //     description: "",
      //     imgPath: "assets/images/remindme.png",
      //     url: "https://github.com/kafri8889/Remind-Me",
      //     type: ProjectUrlType.gitHub
      // ),
      Project(
          title: "N Puzzle",
          description: "The sliding puzzle app (15 Puzzles) was created using Jetpack Compose. This game has 5 modes, namely very easy (3x3), easy (4x4), medium (5x5), difficult (6x6), and very difficult (7x7).",
          imgPath: "assets/images/npuzzle.png",
          url: "https://play.google.com/store/apps/details?id=com.anafthdev.npuzzle",
          type: ProjectUrlType.playStore
      ),
      Project(
          title: "Staver: Whatsapp Status Saver",
          description: "App to save whatsapp status",
          imgPath: "assets/images/staver.png",
          url: "https://play.google.com/store/apps/details?id=com.anafthdev.staver",
          type: ProjectUrlType.playStore
      ),
      Project(
          title: "Calculator Compose",
          description: "Simple calculator created using Jetpack Compose",
          imgPath: "assets/images/calculator.png",
          url: "https://github.com/kafri8889/Calculator-Compose",
          type: ProjectUrlType.gitHub
      ),
      Project(
          title: "Compose Material Component",
          description: "An application to preview components from Material Design 2 in Jetpack Compose.",
          imgPath: "assets/images/md2compose.png",
          url: "https://play.google.com/store/apps/details?id=com.anafthdev.jetpackcomposetutorial",
          type: ProjectUrlType.playStore
      ),
      Project(
          title: "Material Design 3 Android",
          description: "An application to preview components from Material Design 3 in android view.",
          imgPath: "assets/images/md3android.png",
          url: "https://play.google.com/store/apps/details?id=com.anafthdev.materialdesign3",
          type: ProjectUrlType.playStore
      ),
    ];
    return _instance!;
  }

  late List<Project> values;

}