import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/animations/entrancefader.dart';
import 'package:portfolio/pages/about/about.dart';
import 'package:portfolio/pages/contacts/contact.dart';
import 'package:portfolio/pages/home/home.dart';
import 'package:portfolio/pages/project/projectpage.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widget/socialmedia.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      /*appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: MediaQuery.of(context).size.width < 780
            ? EntranceFader(
                duration: const Duration(milliseconds: 250),
                offset: const Offset(0, -10),
                delay: const Duration(seconds: 3),
                child: AutoSizeText(
                  "Portfolio",
                  style: GoogleFonts.pacifico(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              )
            : EntranceFader(
                offset: const Offset(0, -10),
                duration: const Duration(milliseconds: 250),
                delay: const Duration(milliseconds: 100),
                child: AutoSizeText(
                  "Portfolio",
                  style: GoogleFonts.pacifico(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height * 0.035,
                  ),
                ),
              ),
        actions: [
          Container(
            height: 60,
            width: 100,
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              hoverColor: kButtonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Text(
                "HOME",
                style: TextStyle(color: kBoldCaptionColor),
              ),
            ),
          ),
          Container(
            height: 60,
            width: 100,
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
              hoverColor: kButtonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Text(
                "ABOUT",
                style: TextStyle(color: kBoldCaptionColor),
              ),
            ),
          ),
          Container(
            height: 60,
            width: 100,
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProjectPage()),
                );
              },
              hoverColor: kButtonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Text(
                "PROJECT",
                style: TextStyle(color: kBoldCaptionColor),
              ),
            ),
          ),
          Container(
            height: 60,
            width: 100,
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactPage()),
                );
              },
              hoverColor: kButtonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Text(
                "CONTACT",
                style: TextStyle(color: kBoldCaptionColor),
              ),
            ),
          ),
          Container(
            height: 60,
            width: 100,
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              onPressed: () {},
              hoverColor: kButtonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Text(
                "HOME",
                style: TextStyle(color: kBoldCaptionColor),
              ),
            ),
          ),
        ],
      ),*/
      Container(
        height: height - 50,
        width: width,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: width < 1200 ? height * 0.15 : height * 0.1,
              right: width * 0.01,
              child: Opacity(
                opacity: 0.9,
                child: EntranceFader(
                  offset: const Offset(0, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Image.asset(
                    'images/rembg.png',
                    height: width < 1200 ? height * 0.8 : height * 0.85,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.1, height * 0.2, width * 0.1, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AutoSizeText(
                        'WELCOME TO MY PORTFOLIO! ',
                        style: TextStyle(
                          fontSize: height * 0.03,
                          fontWeight: FontWeight.bold,
                          color: kBoldCaptionColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      EntranceFader(
                        offset: const Offset(0, 0),
                        delay: const Duration(seconds: 2),
                        duration: const Duration(milliseconds: 800),
                        child: Image.asset(
                          "assets/hi.gif",
                          height: height * 0.05,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  AutoSizeText(
                    "Sneha Kapoor",
                    style: TextStyle(
                      fontSize: width < 1200 ? height * 0.085 : height * 0.095,
                      fontWeight: FontWeight.w100,
                      color: kButtonColor,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  EntranceFader(
                    offset: const Offset(-10, 0),
                    delay: const Duration(seconds: 1),
                    duration: const Duration(milliseconds: 800),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.play_arrow_rounded,
                          color: kButtonColor,
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              'Flutter Developer',
                              textStyle: const TextStyle(
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                                color: kBoldCaptionColor,
                                decoration: TextDecoration.none,
                              ),
                              speed: const Duration(milliseconds: 100),
                            ),
                          ],
                          totalRepeatCount: 4,
                          pause: const Duration(milliseconds: 3000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    children: socialMediaList
                        .map((e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Material(
                                color: Colors.white,
                                child: IconButton(
                                  hoverColor: Colors.white,
                                  onPressed: () async {
                                    if (!await launch(e.socialLink)) {
                                      throw 'Could not launch ${e.socialLink}';
                                    }
                                  },
                                  icon: Image.network(e.icon,
                                      width: 60, height: 60),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}

class AppBarItems extends StatelessWidget {
  final String text;
  Function? func;
   AppBarItems({
    Key? key, required this.text,
     this.func
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 100,
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        onPressed: () async {
          func;
        },
        hoverColor: kButtonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child:  Text(
          text,
          style: const TextStyle(color: kBoldCaptionColor),
        ),
      ),
    );
  }
}
