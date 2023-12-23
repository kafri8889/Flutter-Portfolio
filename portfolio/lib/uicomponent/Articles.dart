
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';
import 'package:portfolio/data/datasource/remote/ApiService.dart';
import 'package:portfolio/data/model/Article.dart';
import 'package:portfolio/uicomponent/ArticleItem.dart';

class Articles extends StatefulWidget {
  const Articles({super.key, required this.screenType});

  final ScreenType screenType;

  @override
  State<StatefulWidget> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {

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
        future: ApiService().getArticles(),
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
            var list = snapshot.data as List<Article>;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(padding: EdgeInsets.all(16)),
                Text(
                  'Articles',
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
                      return ArticleItem(article: list[index]);
                    }),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(16)),
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
