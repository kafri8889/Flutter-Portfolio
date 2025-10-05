import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../util/Util.dart';

class Skills extends StatelessWidget {
  const Skills({super.key, required this.screenType});

  final ScreenType screenType;

  @override
  Widget build(BuildContext context) {
    return desktop(context);
  }

  Widget desktop(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        Text(
          'My Core Skills',
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
          'Expertise in crafting native Android and cross-platform mobile experiences.',
          textAlign: TextAlign.center,
          style: theme.textTheme.titleLarge?.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SkillItemWrapper(
              title: "Jetpack Compose",
              child: Image.asset(
                "${releasePath}assets/images/jetpack_compose_logo.png",
                width: 140,
                height: 140,
              ),
            ),
            const SizedBox(width: 40),
            SkillItemWrapper(
              title: "Native Android",
              child: Image.asset(
                "${releasePath}assets/images/android_logo_2019.png",
                width: 140,
                height: 140,
              ),
            ),
            const SizedBox(width: 40),
            SkillItemWrapper(
              title: "Flutter",
              child: Image.asset(
                "${releasePath}assets/images/flutter_logo.png",
                width: 140,
                height: 140,
              ),
            ),
            const SizedBox(width: 40),
            SkillItemWrapper(
              title: "Kotlin",
              child: Image.asset(
                "${releasePath}assets/images/kotlin_logo.png",
                width: 140,
                height: 140,
              ),
            )
          ],
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}

class SkillItemWrapper extends StatefulWidget {
  final Widget child;
  final String title;

  const SkillItemWrapper({super.key, required this.child, required this.title});

  @override
  State<SkillItemWrapper> createState() => _SkillItemWrapperState();
}

class _SkillItemWrapperState extends State<SkillItemWrapper> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: 200,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: _isHovering
                    ? theme.colorScheme.primary.withOpacity(0.5)
                    : theme.colorScheme.shadow.withOpacity(0.1),
                blurRadius: _isHovering ? 20 : 6,
                offset: Offset(0, _isHovering ? 6 : 3),
              ),
            ],
            border: Border.all(
              color: _isHovering ? theme.colorScheme.primary : theme.colorScheme.outlineVariant,
              width: _isHovering ? 2 : 1,
            )
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            widget.child,
            const SizedBox(height: 16),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
            )
          ],
        ),
      ),
    );
  }
}
