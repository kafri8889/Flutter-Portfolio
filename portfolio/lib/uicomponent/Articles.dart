import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';
import 'package:portfolio/data/model/Article.dart';
import 'package:portfolio/uicomponent/ArticleItem.dart';

class Articles extends StatefulWidget {
  const Articles({super.key, required this.screenType});

  final ScreenType screenType;

  @override
  State<StatefulWidget> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {

  final List<Article> _localArticles = [
    Article(
        name: "Memahami apa itu @Stable dan @Immutable di Jetpack Compose",
        imgPath: "https://miro.medium.com/v2/resize:fit:720/format:webp/0*0j38V4VXxbdSCJ1W",
        url: "https://medium.com/@anafthdev_/9d2fac2a8747",
        date: "30 December 2023"
    ),
    Article(
        name: "Creating a Python Counter-Like in Java and Kotlin",
        imgPath: "https://miro.medium.com/v2/resize:fit:720/format:webp/0*065qdsGZctvOqrMz",
        url: "https://medium.com/@anafthdev_/3facf2cad2fd",
        date: "29 September 2023"
    ),
    Article(
        name: "Mengatasi UI State yang hilang akibat Process Death di Android",
        imgPath: "https://miro.medium.com/v2/resize:fit:720/format:webp/0*vlXjxG5Z7VXIC1Jt",
        url: "https://medium.com/@anafthdev_/d4b0b6c026da",
        date: "15 September 2023"
    ),
    Article(
        name: "Penjelasan algoritma Bubble Sort",
        imgPath: "https://miro.medium.com/v2/resize:fit:720/format:webp/0*PlzLXS1Wj7rYb1rq",
        url: "https://medium.com/@anafthdev_/3a51cdfd255f",
        date: "05 September 2023"
    ),
    Article(
        name: "Create MediaStyle Notification in Android",
        imgPath: "https://miro.medium.com/v2/resize:fit:720/format:webp/0*B4rW5wkZAb8tcwqf",
        url: "https://medium.com/@anafthdev_/70fe7df3397e",
        date: "19 March 2023"
    ),
    Article(
        name: "Create Biometric Authentication in Android",
        imgPath: "https://miro.medium.com/v2/resize:fit:720/format:webp/0*qM8rnAt_7It11D-p",
        url: "https://medium.com/@anafthdev_/fbfbe77db7c6",
        date: "18 March 2023"
    )
  ];

  @override
  Widget build(BuildContext context) {
    return desktop(context);
  }

  Widget desktop(BuildContext context) {
    final theme = Theme.of(context);
    final list = _localArticles;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        Text(
          'Articles & Insights',
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
          'My thoughts and technical writings on mobile development.',
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
            childAspectRatio: 1.35,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(list.length, (index) {
              return ArticleItem(article: list[index]);
            }),
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
