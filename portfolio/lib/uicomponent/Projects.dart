
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/data/datasource/remote/ApiService.dart';
import 'package:portfolio/uicomponent/ProjectItem.dart';

import '../data/model/Project.dart';

class Projects extends StatefulWidget {
  const Projects({super.key, required this.screenType});

  final ScreenType screenType;

  @override
  State createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {

  @override
  Widget build(BuildContext context) {
    return switch (widget.screenType) {
      ScreenType.Desktop => desktop(context),
      ScreenType.Phone => desktop(context),
      ScreenType.Tablet => desktop(context),
      ScreenType.Watch => desktop(context),
    };
  }

  Widget desktop(BuildContext context) {
    return FutureBuilder(
        future: ApiService().getProjects(),
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
            var list = snapshot.data as List<Project>;

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
                    children: List.generate(list.length, (index) {
                      return ProjectItem(project: list[index]);
                    }),
                  ),
                )
              ],
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else {
            return const Text("Error");
          }
        }
    );
  }

}
