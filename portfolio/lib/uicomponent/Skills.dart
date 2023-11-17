
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

import 'SkillItemAndroid.dart';
import 'SkillItemJC.dart';
import 'SkillItemKotlin.dart';

class Skills extends StatelessWidget {
  const Skills({super.key, required this.screenType});

  final ScreenType screenType;

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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(padding: EdgeInsets.all(16)),
        Text(
          'Skills',
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
        const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SkillItemJC(
                width: 256,
                height: 256,
              ),
              Padding(padding: EdgeInsets.all(16)),
              SkillItemAndroid(
                width: 256,
                height: 256,
              ),
              Padding(padding: EdgeInsets.all(16)),
              SkillItemKotlin(
                width: 256,
                height: 256,
              )
            ]
        ),
        const Padding(padding: EdgeInsets.all(16)),
      ],
    );
  }
}
