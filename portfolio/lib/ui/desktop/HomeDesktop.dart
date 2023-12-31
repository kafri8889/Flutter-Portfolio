import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:portfolio/uicomponent/Projects.dart';
import 'package:portfolio/uicomponent/Skills.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../uicomponent/Articles.dart';
import '../../uicomponent/Certificates.dart';
import '../../util/EmailUtil.dart';
import '../../util/Util.dart';

class HomeDesktop extends StatelessWidget {
  HomeDesktop({super.key});

  final emailSenderNameController = TextEditingController();
  final emailSubjectController = TextEditingController();
  final emailTextController = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Column(
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
                            "${releasePath}assets/svg/anafthdev_logo.svg",
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
                              if (!await launchUrl(Uri.parse('https://t.me/nplth'))) {
                                throw Exception('Could not launch telegram url');
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: SvgPicture.asset(
                                "${releasePath}assets/svg/telegram.svg",
                                width: 32,
                                height: 32,
                              ),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(8)),
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
                                "${releasePath}assets/svg/twitter.svg",
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
                                "${releasePath}assets/svg/linkedin.svg",
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
                                "${releasePath}assets/svg/github.svg",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(72.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 0.0, height: 16.0),
                            Row(
                              children: [
                                SizedBox(
                                  height: 48,
                                  child: DefaultTextStyle(
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 48,
                                        fontWeight: FontWeight.w700,
                                        height: 1.08,
                                      ),
                                      child: AnimatedTextKit(
                                          repeatForever: true,
                                          animatedTexts: [
                                            RotateAnimatedText("Hello", duration: const Duration(seconds: 2), rotateOut: false),
                                            RotateAnimatedText("안녕하세요", duration: const Duration(seconds: 2), rotateOut: false),
                                            RotateAnimatedText("こんにちは", duration: const Duration(seconds: 2), rotateOut: false),
                                            RotateAnimatedText("你好", duration: const Duration(seconds: 2), rotateOut: false),
                                          ]
                                      )
                                  ),
                                ),
                                const Text(
                                    "! I am",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 48,
                                      fontWeight: FontWeight.w700,
                                      height: 1.08,
                                    )
                                ),
                              ],
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
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400
                                )
                            )
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(72),
                          child: SvgPicture.asset(
                              "${releasePath}assets/svg/android.svg"
                          )
                      )
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(24)),
                  /**
                   * Skills
                   */
                  const Skills(screenType: ScreenType.Desktop),
                  const Padding(padding: EdgeInsets.all(16)),
                  /**
                   * Certificates
                   */
                  const Certificates(screenType: ScreenType.Desktop),
                  const Padding(padding: EdgeInsets.all(16)),
                  /**
                   * Articles
                   */
                  const Articles(screenType: ScreenType.Desktop),
                  const Padding(padding: EdgeInsets.all(16)),
                  /**
                   * Projects
                   */
                  const Projects(
                    screenType: ScreenType.Desktop
                  ),
                  const Padding(padding: EdgeInsets.all(16)),
                  /**
                   * Contact me
                   */
                  Container(
                    color: Theme.of(context).colorScheme.tertiaryContainer,
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Contact Me',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 48,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 1.08,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(24)),
                          TextField(
                            controller: emailSenderNameController,
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                            decoration: InputDecoration(
                                label: const Text("Your Name"),
                                fillColor: Theme.of(context).colorScheme.background,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Theme.of(context).colorScheme.outline
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide: BorderSide(
                                        width: 2,
                                        color: Theme.of(context).colorScheme.primary
                                    )
                                )
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(8)),
                          TextField(
                            controller: emailSubjectController,
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                            decoration: InputDecoration(
                                label: const Text("Subject"),
                                fillColor: Theme.of(context).colorScheme.background,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Theme.of(context).colorScheme.outline
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide: BorderSide(
                                        width: 2,
                                        color: Theme.of(context).colorScheme.primary
                                    )
                                )
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(8)),
                          TextField(
                            controller: emailTextController,
                            keyboardType: TextInputType.multiline,
                            minLines: 4,
                            maxLines: 0x7fffffff, // int 32 max value
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                            decoration: InputDecoration(
                                alignLabelWithHint: true,
                                label: const Text("How can I help?"),
                                fillColor: Theme.of(context).colorScheme.background,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Theme.of(context).colorScheme.outline
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(
                                        width: 2,
                                        color: Theme.of(context).colorScheme.primary
                                    )
                                )
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(8)),
                          FilledButton(
                              onPressed: () {
                                EmailUtils().launchEmailSubmission(
                                    toEmail: "anafnaufalian@gmail.com",
                                    subject: 'From ${emailSenderNameController.text}, ${emailSubjectController.text}',
                                    body: emailTextController.text
                                );
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    top: 12,
                                    bottom: 12,
                                    left: 24,
                                    right: 24
                                ),
                                child: Text("Send"),
                              )
                          ),
                          const Padding(padding: EdgeInsets.all(96)),
                        ],
                      ),
                    ),
                  )
                ],
              );
            }
        )
    );
  }
}
