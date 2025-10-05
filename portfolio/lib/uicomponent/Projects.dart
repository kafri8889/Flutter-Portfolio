import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/data/ProjectUrlType.dart';
import 'package:portfolio/data/model/Project.dart';
import 'package:portfolio/uicomponent/ProjectItem.dart';

import '../util/Util.dart';

class Projects extends StatefulWidget {
  const Projects({super.key, required this.screenType});

  final ScreenType screenType;

  @override
  State createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {

  final List<Project> _localProjects = [
    Project(
        title: "Musicompose",
        description: "A music application created using the Jetpack Compose framework. This application has features such as playlists, favorites, timers, changing the order of songs, etc.",
        imgPath: "https://kafri8889.github.io/resources/musicompose.png",
        url: "https://github.com/kafri8889/Musicompose-V2",
        type: ProjectUrlType.gitHub
    ),
    Project(
        title: "MathQ",
        description: "Math puzzle app. Consists of the easiest to the most difficult questions. In this app you will be given a picture, and you have to find the answer, if you can't find the answer, you can use hints.",
        imgPath: "https://kafri8889.github.io/resources/mathq.png",
        url: "https://play.google.com/store/apps/details?id=com.anafthdev.mathq",
        type: ProjectUrlType.playStore
    ),
    Project(
        title: "Project Management",
        description: "Project management application. Create tasks and subtasks in your project creation and monitor the progress, you can also add deadlines for projects or tasks, and create reminders to work on projects, tasks, and subtasks.",
        imgPath: "https://kafri8889.github.io/resources/projman.png",
        url: "https://play.google.com/store/apps/details?id=com.anafthdev.projectmanagement",
        type: ProjectUrlType.playStore
    ),
    Project(
        title: "Bookmark Manager",
        description: "A bookmarking application that is useful for saving urls, you can also group bookmarks with the Bookmark Collection feature. Don't be afraid to lose your bookmarks, because you can also back up and restore bookmarks.",
        imgPath: "https://kafri8889.github.io/resources/bookman.png",
        url: "https://play.google.com/store/apps/details?id=com.anafthdev.bookman",
        type: ProjectUrlType.playStore
    ),
    Project(
        title: "Compose Material Design 3",
        description: "An application to preview components from Material Design 3 in Jetpack Compose. This application also has features to customize components such as adding round corners, changing colors, etc.",
        imgPath: "https://kafri8889.github.io/resources/md3compose.png",
        url: "https://play.google.com/store/apps/details?id=com.anafthdev.md3compose",
        type: ProjectUrlType.playStore
    ),
    Project(
        title: "Saku: Compose Sudoku",
        description: "Sudoku puzzle app. This application is made using Jetpack Compose and has many features such as pencil, print board to pdf, undo/redo, highlight same number, etc.",
        imgPath: "https://kafri8889.github.io/resources/saku.png",
        url: "https://github.com/kafri8889/Saku-Compose-Sudoku",
        type: ProjectUrlType.gitHub
    ),
    Project(
        title: "Compose Classic Snake Game",
        description: "Classic snake game app, in this app you can set movement delay, easing animation, easing animation delay, and set how big the tiles are.",
        imgPath: "https://kafri8889.github.io/resources/csnake.png",
        url: "https://github.com/kafri8889/Compose-Classic-Snake-Game",
        type: ProjectUrlType.gitHub
    ),
    Project(
        title: "TicTacToe",
        description: "TicTacToe App",
        imgPath: "https://kafri8889.github.io/resources/tictactoe.png",
        url: "https://github.com/kafri8889/Compose-TicTacToe",
        type: ProjectUrlType.gitHub
    ),
    Project(
        title: "N Puzzle",
        description: "The sliding puzzle app (15 Puzzles) was created using Jetpack Compose. This game has 5 modes, namely very easy (3x3), easy (4x4), medium (5x5), difficult (6x6), and very difficult (7x7).",
        imgPath: "https://kafri8889.github.io/resources/npuzzle.png",
        url: "https://play.google.com/store/apps/details?id=com.anafthdev.npuzzle",
        type: ProjectUrlType.playStore
    ),
    Project(
        title: "Staver: Whatsapp Status Saver",
        description: "App to save whatsapp status",
        imgPath: "https://kafri8889.github.io/resources/staver.png",
        url: "https://play.google.com/store/apps/details?id=com.anafthdev.staver",
        type: ProjectUrlType.playStore
    ),
    Project(
        title: "Calculator Compose",
        description: "Simple calculator created using Jetpack Compose",
        imgPath: "https://kafri8889.github.io/resources/calculator.png",
        url: "https://github.com/kafri8889/Calculator-Compose",
        type: ProjectUrlType.gitHub
    ),
    Project(
        title: "Compose Material Component",
        description: "An application to preview components from Material Design 2 in Jetpack Compose.",
        imgPath: "https://kafri8889.github.io/resources/md2compose.png",
        url: "https://play.google.com/store/apps/details?id=com.anafthdev.jetpackcomposetutorial",
        type: ProjectUrlType.playStore
    ),
    Project(
        title: "Material Design 3 Android",
        description: "An application to preview components from Material Design 3 in android view.",
        imgPath: "https://kafri8889.github.io/resources/md3android.png",
        url: "https://play.google.com/store/apps/details?id=com.anafthdev.materialdesign3",
        type: ProjectUrlType.playStore
    )
  ];

  @override
  Widget build(BuildContext context) {
    return desktop(context);
  }

  Widget desktop(BuildContext context) {
    final theme = Theme.of(context);
    final list = _localProjects;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        Text(
          'Featured Projects',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: theme.colorScheme.onBackground,
            fontSize: 48,
            fontWeight: FontWeight.w900,
            height: 1.08,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Selection of my best work in mobile development, featuring modern UI/UX.',
          textAlign: TextAlign.center,
          style: theme.textTheme.titleLarge?.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 32,
            mainAxisSpacing: 32,
            childAspectRatio: 1.15,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(list.length, (index) {
              return ProjectItem(project: list[index]);
            }),
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
