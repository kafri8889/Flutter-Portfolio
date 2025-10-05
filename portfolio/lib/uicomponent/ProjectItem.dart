import 'package:flutter/material.dart';
import 'package:portfolio/data/model/Project.dart';
import 'package:url_launcher/url_launcher.dart';

import '../data/ProjectUrlType.dart';

class ProjectItem extends StatefulWidget {
  const ProjectItem({super.key, required this.project});

  final Project project;

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  bool _isHovering = false;

  IconData _getProjectIcon(ProjectUrlType type) {
    switch (type) {
      case ProjectUrlType.gitHub:
        return Icons.code;
      case ProjectUrlType.playStore:
        return Icons.shop;
      default:
        return Icons.launch;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: _isHovering
                    ? theme.colorScheme.primary.withOpacity(0.4)
                    : theme.colorScheme.shadow.withOpacity(0.1),
                blurRadius: _isHovering ? 12 : 4,
                offset: Offset(0, _isHovering ? 4 : 2),
              ),
            ],
            border: Border.all(
              color: _isHovering ? theme.colorScheme.primary : theme.colorScheme.outlineVariant,
              width: _isHovering ? 2 : 1,
            )
        ),
        child: InkWell(
          onTap: () async {
            if (!await launchUrl(Uri.parse(widget.project.url))) {
              throw Exception('Could not launch project url');
            }
          },
          borderRadius: BorderRadius.circular(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: AspectRatio(
                  aspectRatio: 2.5 / 1,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Image.network(
                      widget.project.imgPath,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: theme.colorScheme.surfaceContainerHighest,
                        child: Center(
                          child: Icon(Icons.broken_image, color: theme.colorScheme.onSurfaceVariant),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
                child: Text(
                  widget.project.title,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    widget.project.description,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
                child: Row(
                  children: [
                    Icon(
                      _getProjectIcon(widget.project.type),
                      color: theme.colorScheme.primary,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      widget.project.type.name.toUpperCase(),
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_right_alt_outlined,
                      color: theme.colorScheme.primary,
                      size: 28,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
