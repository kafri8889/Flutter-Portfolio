import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomeMobile extends StatelessWidget {
  HomeMobile({super.key});

  bool blockScroll = false;

  final emailSenderNameController = TextEditingController();
  final emailSubjectController = TextEditingController();
  final emailTextController = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          constraints: const BoxConstraints.expand(),
          child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                FlickerAnimatedText(
                    "Please use desktop mode",
                  textStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).primaryColor
                  )
                )
              ]
          ),
        )
    );
  }
}
