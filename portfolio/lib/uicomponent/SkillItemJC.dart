
import 'package:flutter/material.dart';

import '../util/Util.dart';

class SkillItemJC extends StatelessWidget {
  const SkillItemJC({super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "${releasePath}assets/images/skill_item_jc.png",
      width: width,
      height: height,
    );
  }
}