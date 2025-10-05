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
                  /**
                   * Hero Section
                   */
                  HeroSection(releasePath: releasePath),
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

class HeroSection extends StatefulWidget {
  final String releasePath;
  const HeroSection({super.key, required this.releasePath});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> with TickerProviderStateMixin {
  late AnimationController _controller1;
  late Animation<double> _animation1;

  late AnimationController _controller2;
  late Animation<double> _animation2;

  @override
  void initState() {
    super.initState();
    _controller1 = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat(reverse: true);

    _animation1 = Tween<double>(begin: -1.0, end: 1.0).animate(CurvedAnimation(
      parent: _controller1,
      curve: Curves.easeInOut,
    ));

    _controller2 = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat(reverse: true);

    _animation2 = Tween<double>(begin: 1.0, end: -1.0).animate(CurvedAnimation(
      parent: _controller2,
      curve: Curves.easeInOutSine,
    ));
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  Widget _buildFloatingDecoration(BuildContext context, Animation<double> animation, double size, Color color, double dx, double dy) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(dx * animation.value, dy * animation.value),
          child: child,
        );
      },
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color.withOpacity(0.6),
          shape: size == 40 ? BoxShape.rectangle : BoxShape.circle,
          borderRadius: size == 40 ? BorderRadius.circular(10) : null,
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.2),
              blurRadius: 10,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 72, vertical: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    SizedBox(
                      height: 72,
                      child: DefaultTextStyle(
                          style: TextStyle(
                            color: theme.colorScheme.onBackground,
                            fontSize: 64,
                            fontWeight: FontWeight.w900,
                            height: 1.05,
                          ),
                          child: AnimatedTextKit(
                              repeatForever: true,
                              animatedTexts: [
                                RotateAnimatedText("Hello", duration: const Duration(seconds: 2), rotateOut: false),
                                RotateAnimatedText("안녕하세요", duration: const Duration(seconds: 2), rotateOut: false),
                                RotateAnimatedText("你好", duration: const Duration(seconds: 2), rotateOut: false),
                              ]
                          )
                      ),
                    ),
                    Text(
                        "!",
                        style: TextStyle(
                          color: theme.colorScheme.onBackground,
                          fontSize: 64,
                          fontWeight: FontWeight.w900,
                          height: 1.05,
                        )
                    ),
                  ],
                ),
                AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText(
                          "I'm Anaf Naufalian",
                          speed: const Duration(milliseconds: 100),
                          textStyle: TextStyle(
                            color: theme.colorScheme.primary,
                            fontSize: 72,
                            fontWeight: FontWeight.w900,
                            height: 1.05,
                          )
                      )
                    ]
                ),
                const SizedBox(height: 32),
                Text(
                    "A passionate Android developer with a strong interest in Android and Kotlin. Currently studying at GunadarmaUniversity, I started my Android development journey in 2018 and have worked on 10+ personal projects. I enjoycreating innovative and useful applications while continuously improving my skills. Adaptable to both independentand team-based work.",
                    style: TextStyle(
                        color: theme.colorScheme.onBackground,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        height: 1.5
                    )
                ),
                const SizedBox(height: 48),
                FilledButton.icon(
                  onPressed: () {
                    launchUrl(Uri.parse("https://drive.google.com/file/d/1sc1QjUO2ZGOWNeNh86WIfncCFAFemCns/view?usp=sharing"));
                  },
                  icon: const Icon(Icons.download),
                  label: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Text(
                      "Download Resume",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    minimumSize: const Size(250, 60),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 80),
          Container(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Gambar utama (me_blob.png)
                    Image.asset(
                      "${widget.releasePath}assets/images/me_blob.png",
                    ),
                    Positioned(
                      top: -30,
                      left: -30,
                      child: _buildFloatingDecoration(
                          context, _animation1,
                          50, theme.colorScheme.secondary,
                          20, 30
                      ),
                    ),
                    Positioned(
                      bottom: -20,
                      right: -20,
                      child: _buildFloatingDecoration(
                          context, _animation2,
                          40, theme.colorScheme.tertiary,
                          0, 40
                      ),
                    ),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
