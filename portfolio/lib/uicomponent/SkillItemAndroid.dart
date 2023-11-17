
import 'package:flutter/material.dart';

import '../util/Util.dart';

class SkillItemAndroid extends StatelessWidget {
  const SkillItemAndroid({super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "${releasePath}assets/images/skill_item_android.png",
      width: width,
      height: height,
    );
  }
}