
import 'package:flutter/material.dart';
import 'package:portfolio/data/model/Project.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: const Color.fromARGB(0, 0, 0, 0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 2/1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8)
                ),
                child: Image.network(
                  project.imgPath,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 2),
            child: Text(
              project.title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 2),
            child: Text(
              project.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  project.type.name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary
                  ),
                ),
                const Spacer(flex: 1),
                IconButton(
                    onPressed: () async {
                      if (!await launchUrl(Uri.parse(project.url))) {
                        throw Exception('Could not launch url');
                      }
                    },
                    icon: Icon(
                      Icons.arrow_right_alt_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 32,
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
