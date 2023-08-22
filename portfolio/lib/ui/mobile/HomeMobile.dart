import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pinch_zoom_release_unzoom/pinch_zoom_release_unzoom.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controller/HomeController.dart';
import '../../util/EmailUtil.dart';
import '../../util/Util.dart';

class HomeMobile extends StatelessWidget {
  HomeMobile({Key? key, required this.controller}) : super(key: key);

  final HomeController controller;
  bool blockScroll = false;

  final emailSenderNameController = TextEditingController();
  final emailSubjectController = TextEditingController();
  final emailTextController = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          physics: blockScroll ? const NeverScrollableScrollPhysics() : const ScrollPhysics(),
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
                        const Padding(padding: EdgeInsets.all(16.0)),
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
                        const Padding(padding: EdgeInsets.all(4)),
                        InkWell(
                          borderRadius: const BorderRadius.all(Radius.circular(100)),
                          onTap: () async {
                            if (!await launchUrl(Uri.parse('https://twitter.com/anafthdev_'))) {
                              throw Exception('Could not launch twitter url');
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: SvgPicture.asset(
                              "${releasePath}assets/svg/twitter.svg",
                              width: 32,
                              height: 32,
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(4)),
                        InkWell(
                          borderRadius: const BorderRadius.all(Radius.circular(100)),
                          onTap: () async {
                            if (!await launchUrl(Uri.parse('https://www.linkedin.com/in/anaf-naufalian/'))) {
                              throw Exception('Could not launch linkedin url');
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: SvgPicture.asset(
                              "${releasePath}assets/svg/linkedin.svg",
                              width: 32,
                              height: 32,
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(4)),
                        InkWell(
                          borderRadius: const BorderRadius.all(Radius.circular(100)),
                          onTap: () async {
                            if (!await launchUrl(Uri.parse('https://github.com/kafri8889'))) {
                              throw Exception('Could not launch github url');
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: SvgPicture.asset(
                              "${releasePath}assets/svg/github.svg",
                              width: 32,
                              height: 32,
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(8))
                      ],
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.all(16)),
                Padding(
                    padding: const EdgeInsets.only(left: 48, right: 48),
                    child: SvgPicture.asset(
                        "${releasePath}assets/svg/android.svg"
                    )
                ),
                FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 48, right: 48),
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
                                    fontSize: 32,
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
                                  fontSize: 32,
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
                                    fontSize: 32,
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
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                            )
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(24)),
                /**
                 * Skills
                 */
                Container(
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Padding(padding: EdgeInsets.all(16)),
                      Text(
                        'Skills',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 32,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.08,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(16)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "${releasePath}assets/images/jetpack_compose.png",
                              width: 72,
                              height: 72,
                            ),
                            const Padding(padding: EdgeInsets.all(16)),
                            Image.asset(
                              "${releasePath}assets/images/android.png",
                              width: 72,
                              height: 72,
                            ),
                            const Padding(padding: EdgeInsets.all(16)),
                            SvgPicture.asset(
                              "${releasePath}assets/svg/kotlin_icon.svg",
                              width: 72,
                              height: 72,
                            )
                          ]
                      ),
                      const Padding(padding: EdgeInsets.all(16)),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.all(16)),
                /**
                 * Certificates
                 */
                Text(
                  'Certificates',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 32,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 1.08,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(16)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PinchZoomReleaseUnzoomWidget(
                        minScale: 1,
                        maxScale: 4,
                        twoFingersOn: () {
                          blockScroll = true;
                        },
                        twoFingersOff: () => Future.delayed(
                          PinchZoomReleaseUnzoomWidget.defaultResetDuration,
                              () { blockScroll = false; },
                        ),
                        child: Image.asset(
                          "${releasePath}assets/images/dicoding_kotlin.jpg",
                          width: context.width / 2.5,
                          height: (context.width / 2.5 * 3) / 4,
                          filterQuality: FilterQuality.high,
                          isAntiAlias: true,
                        )
                    ),
                    PinchZoomReleaseUnzoomWidget(
                        minScale: 1,
                        maxScale: 4,
                        twoFingersOn: () {
                          blockScroll = true;
                        },
                        twoFingersOff: () => Future.delayed(
                          PinchZoomReleaseUnzoomWidget.defaultResetDuration,
                              () { blockScroll = false; },
                        ),
                        child: Image.asset(
                          "${releasePath}assets/images/dicoding_android_pemula.jpg",
                          width: context.width / 2.5,
                          height: (context.width / 2.5 * 3) / 4,
                          filterQuality: FilterQuality.high,
                          isAntiAlias: true,
                        )
                    )
                  ],
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
                          fontSize: 32,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.08,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(24)),
                      Obx(() =>
                          AnimatedOpacity(
                            duration: const Duration(seconds: 1),
                            opacity: controller.textOpacity.value,
                            child: Text(
                              controller.currentProject.value.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 1.22,
                              ),
                            ),
                          )
                      ),
                      const Padding(padding: EdgeInsets.all(16)),
                      FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              borderRadius: const BorderRadius.all(Radius.circular(100)),
                              onTap: () {
                                controller.previous();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: SvgPicture.asset(
                                  "${releasePath}assets/svg/arrow_left_new.svg",
                                  width: 32,
                                  height: 32,
                                ),
                              ),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(48),
                                child: Obx(() =>
                                    PinchZoomReleaseUnzoomWidget(
                                        minScale: 1,
                                        maxScale: 3,
                                        twoFingersOn: () {
                                          blockScroll = true;
                                        },
                                        twoFingersOff: () => Future.delayed(
                                          PinchZoomReleaseUnzoomWidget.defaultResetDuration,
                                              () { blockScroll = false; },
                                        ),
                                        child: Image.asset(
                                          controller.currentProject.value.imgPath,
                                          width: context.width / 1.4,
                                          height: (context.width / 1.4 * 3) / 4,
                                          filterQuality: FilterQuality.low,
                                          isAntiAlias: true,
                                        )
                                    )
                                )
                            ),
                            InkWell(
                              borderRadius: const BorderRadius.all(Radius.circular(100)),
                              onTap: () {
                                controller.next();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: SvgPicture.asset(
                                  "${releasePath}assets/svg/arrow_right_new.svg",
                                  width: 32,
                                  height: 32,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(16)),
                      Wrap(
                        children: [
                          Obx(() =>
                              SizedBox(
                                width: double.infinity,
                                child: Wrap(
                                  alignment: WrapAlignment.spaceEvenly,
                                  children: [
                                    FilledButton(
                                        onPressed: () async {
                                          if (!await launchUrl(Uri.parse(controller.currentProject.value.url))) {
                                            throw Exception('Could not launch url');
                                          }
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8,
                                              bottom: 8,
                                              left: 16,
                                              right: 16
                                          ),
                                          child: Text(controller.currentProject.value.type.name),
                                        )
                                    )
                                  ],
                                ),
                              )
                          )
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(16)),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.all(32)),
                /**
                 * About me
                 */
                Padding(
                    padding: const EdgeInsets.only(right: 32, left: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'About Me',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 32,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 1.08,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(16)),
                        const Text(
                          "Lorem ipsum",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                        )
                      ],
                    ),
                ),
                const Padding(padding: EdgeInsets.all(32)),
                /**
                 * Contact us
                 */
                Container(
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Contact Us',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 32,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 1.08,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(16)),
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
                                  top: 8,
                                  bottom: 8,
                                  left: 16,
                                  right: 16
                              ),
                              child: Text("Send"),
                            )
                        ),
                        const Padding(padding: EdgeInsets.all(32)),
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
