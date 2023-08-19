import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controller/HomeController.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key, required this.controller}) : super(key: key);

  final HomeController controller;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /**
               * Top
               */
              const Padding(padding: EdgeInsets.all(8)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.all(32.0)),
                      SvgPicture.asset(
                        "assets/svg/anafthdev_logo.svg",
                        width: 56,
                        height: 56,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        borderRadius: const BorderRadius.all(Radius.circular(100)),
                        onTap: () async {
                          if (!await launchUrl(Uri.parse('https://twitter.com/anafthdev_'))) {
                            throw Exception('Could not launch twitter url');
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: SvgPicture.asset(
                            "svg/twitter.svg",
                            width: 32,
                            height: 32,
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(8)),
                      InkWell(
                        borderRadius: const BorderRadius.all(Radius.circular(100)),
                        onTap: () async {
                          if (!await launchUrl(Uri.parse('https://www.linkedin.com/in/anaf-naufalian/'))) {
                            throw Exception('Could not launch linkedin url');
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: SvgPicture.asset(
                            "svg/linkedin.svg",
                            width: 32,
                            height: 32,
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(8)),
                      InkWell(
                        borderRadius: const BorderRadius.all(Radius.circular(100)),
                        onTap: () async {
                          if (!await launchUrl(Uri.parse('https://github.com/kafri8889'))) {
                            throw Exception('Could not launch github url');
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: SvgPicture.asset(
                            "svg/github.svg",
                            width: 32,
                            height: 32,
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(32))
                    ],
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.all(16)),
              Padding(
                  padding: const EdgeInsets.only(left: 72, right: 72),
                  child: SvgPicture.asset(
                      "svg/android.svg"
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 72, right: 72),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                        "Hello! I am",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 48,
                          fontWeight: FontWeight.w700,
                          height: 1.08,
                        )
                    ),
                    AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText(
                              "Anaf Naufalian",
                              speed: const Duration(milliseconds: 128),
                              textStyle: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 48,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 1.08,
                              )
                          )
                        ]
                    ),
                    const Padding(padding: EdgeInsets.all(16)),
                    const Text(
                        "i'm an Android Developer 📱 based in Indonesia",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w400
                        )
                    )
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(16)),
              /**
               * Projects
               */
              Container(
                color: Theme.of(context).colorScheme.surfaceVariant,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(padding: EdgeInsets.all(16)),
                    Text(
                      'Projects',
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
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
