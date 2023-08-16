import 'package:flutter/material.dart';
import 'package:portfolio/ui/mobile/HomeMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop/HomeDesktop.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => const HomeDesktop(),
      mobile: (BuildContext context) => const HomeMobile(),
    );
  }
}