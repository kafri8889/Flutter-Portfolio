import 'package:flutter/material.dart';
import 'package:portfolio/ui/Home.dart';

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
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightColorScheme,
          fontFamily: "Inter"
      ),
      // darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const Home(),
    );
  }
}
