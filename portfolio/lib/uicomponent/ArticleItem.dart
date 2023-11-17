
import 'package:flutter/material.dart';
import 'package:portfolio/data/model/Article.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      fit: StackFit.expand,
      children: [
        const FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 2.8/4,
          child: Card(
              shadowColor: Color.fromARGB(0, 0, 0, 0)
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: SizedBox.expand(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                        child: Image.network(
                          article.imgPath,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  )
              ),
              Flexible(
                  flex: 1,
                  child: SizedBox.expand(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(padding: EdgeInsets.all(8)),
                        Text(article.date),
                        Text(
                          article.name,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  )
              ),
              Flexible(
                  flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Read more",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Theme.of(context).colorScheme.primary
                        ),
                      ),
                      const Spacer(flex: 1),
                      IconButton(
                          onPressed: () async {
                            if (!await launchUrl(Uri.parse(article.url))) {
                              throw Exception('Could not launch telegram url');
                            }
                          },
                          icon: Icon(
                            Icons.arrow_right_alt_outlined,
                            color: Theme.of(context).colorScheme.primary,
                            size: 32,
                          )
                      )
                    ],
                  )
              )
            ],
          ),
        )
      ],
    );
  }

}
