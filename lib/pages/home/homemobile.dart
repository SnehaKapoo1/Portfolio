import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/animations/entrancefader.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/widget/socialmedia.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeMobile extends StatelessWidget {
  HomeMobile({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffold,
      body: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            right: -width * 0.25,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                'images/rembg.png',
                height: height * 0.63,
              ),
            ),
          ),
          Container(
              margin:
              EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'HEY THERE!',
                        style: TextStyle(
                            color: kBoldCaptionColor, fontSize: height * 0.025),
                      ),
                      Image.asset(
                        "assets/hi.gif",
                        height: height * 0.035,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  const Text(
                    'Sneha Kapoor',
                    style: TextStyle(
                        color: kButtonColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0),
                  ),
                  SizedBox(
                    height: height * 0.02,
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
                          size: 40,
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              'Flutter Developer',
                              textStyle: const TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: kBoldCaptionColor,
                                decoration: TextDecoration.none,
                              ),
                              speed: const Duration(milliseconds: 100),
                            ),
                            /*TypewriterAnimatedText(
                              'Java Developer',
                              textStyle: const TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: kBoldCaptionColor,
                                decoration: TextDecoration.none,
                              ),
                              speed: const Duration(milliseconds: 100),
                            ),*/
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
                    height: height * 0.03,
                  ),
                  Row(
                    children: socialMediaList
                        .map((e) => Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0,
                          left: 0.0,
                          right: 8.0,
                          bottom: 8.0),
                      child: Material(
                        color: Colors.white,
                        child: IconButton(
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
              )),
        ],
      ),
    );
  }
}
