import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/HomeController.dart';
import 'package:portfolio/ui/mobile/HomeMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop/HomeDesktop.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => HomeDesktop(controller: controller),
      mobile: (BuildContext context) => HomeMobile(controller: controller),
    );
  }
}