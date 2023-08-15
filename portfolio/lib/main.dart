import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'color_schemes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      // darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    flex: 1,
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                      child: SvgPicture.asset(
                        "assets/svg/anafthdev_logo.svg",
                      ),
                    )
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
                          throw Exception('Could not launch twitter url');
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
                          throw Exception('Could not launch twitter url');
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
                    const Padding(padding: EdgeInsets.all(8))
                  ],
                )
              ],
            )
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Update with your UI',
              ),
            ],
          ),
        ),
        floatingActionButton:
        FloatingActionButton(onPressed: () => {}, tooltip: 'Increment'));
  }
}
