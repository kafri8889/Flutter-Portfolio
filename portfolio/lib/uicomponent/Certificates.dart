
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../util/Util.dart';

class Certificates extends StatelessWidget {
  const Certificates({super.key, required this.screenType});

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
      children: [
        Text(
          'Certificates',
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "${releasePath}assets/images/dicoding_kotlin.jpg",
              width: context.width / 2.5,
              height: (context.width / 2.5 * 3) / 4,
              filterQuality: FilterQuality.high,
              isAntiAlias: true,
            ),
            Image.asset(
              "${releasePath}assets/images/dicoding_android_pemula.jpg",
              width: context.width / 2.5,
              height: (context.width / 2.5 * 3) / 4,
              filterQuality: FilterQuality.high,
              isAntiAlias: true,
            )
          ],
        )
      ],
    );
  }
}
