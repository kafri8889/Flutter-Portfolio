
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/data/LocalProjectDataProvider.dart';
import 'package:portfolio/uicomponent/ProjectItem.dart';

import '../controller/HomeController.dart';
import '../data/model/Project.dart';

class Projects extends StatelessWidget {
  Projects({super.key, required this.screenType, required this.controller});

  final ScreenType screenType;
  final HomeController controller;
  final List<Project> projects = LocalProjectDataProvider.getInstance().values;

  @override
  Widget build(BuildContext context) {
    return switch (screenType) {
      ScreenType.Desktop => desktop(context),
      ScreenType.Phone => desktop(context),
      ScreenType.Tablet => desktop(context),
      ScreenType.Watch => desktop(context),
    };
  }

  Widget desktop(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(padding: EdgeInsets.all(16)),
        Text(
          'Projects',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 48,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            height: 1.08,
          ),
        ),
        const Padding(padding: EdgeInsets.all(16)),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: GridView.count(
            // Create a grid with 3 columns. If you change the scrollDirection to
            // horizontal, this produces 3 rows.
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            childAspectRatio: 2/1.8,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(projects.length, (index) {
              return ProjectItem(project: projects[index]);
            }),
          ),
        )
      ],
    );
  }
}
