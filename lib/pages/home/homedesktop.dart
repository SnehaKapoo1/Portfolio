import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/animations/entrancefader.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widget/socialmedia.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeDesktop extends StatelessWidget {
  HomeDesktop({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return OrientationBuilder(
      builder: (_, Orientation ori) {
        if (ori == Orientation.landscape) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                backgroundColor: Colors.white,
                title: AutoSizeText(
                  "Portfolio",
                  style: GoogleFonts.pacifico(
                    color: Colors.black,
                    fontSize: 30.0,
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () {},
                      child: const AutoSizeText(
                        "Home",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        overlayColor: MaterialStateProperty.all(Colors.red),
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.white;
                          }
                          return Colors.black;
                        }),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () {},
                      child: const AutoSizeText(
                        "About",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        overlayColor: MaterialStateProperty.all(Colors.red),
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.white;
                          }
                          return Colors.black;
                        }),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () {},
                      child: const AutoSizeText(
                        "Skills",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        overlayColor: MaterialStateProperty.all(Colors.red),
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.white;
                          }
                          return Colors.black;
                        }),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () {},
                      child: const AutoSizeText(
                        "Projects",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        overlayColor: MaterialStateProperty.all(Colors.red),
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.white;
                          }
                          return Colors.black;
                        }),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () {},
                      child: const AutoSizeText(
                        "Contact",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        overlayColor: MaterialStateProperty.all(Colors.red),
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.white;
                          }
                          return Colors.black;
                        }),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () {},
                      child: const AutoSizeText(
                        "Resume",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        overlayColor: MaterialStateProperty.all(Colors.red),
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.white;
                          }
                          return Colors.black;
                        }),
                      ),
                    ),
                  ),
                ]),
            body: SizedBox(
              height: height - 50,
              width: width,
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
                                fontSize: height * 0.05,
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
                            fontSize:
                                width < 1200 ? height * 0.080 : height * 0.090,
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
                                size: 40,
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
            ),
          );
        } else {
          return Scaffold(
            key: _scaffold,
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () => _scaffold.currentState!.openDrawer(),
                icon: const Icon(Icons.menu, color: kBoldCaptionColor),
              ),
              actions: [
                Center(
                  child: AutoSizeText(
                    'Portfolio  ',
                    style: GoogleFonts.pacifico(
                      color: kMobileRedColor,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            drawer: Drawer(
              child: Column(
                children: [
                  SizedBox(
                    height: 150.0,
                    child: DrawerHeader(
                      decoration: const BoxDecoration(
                        color: kMobileRedColor,
                      ),
                      child: Center(
                        child: Text(
                          '<Portfolio/>',
                          style: GoogleFonts.pacifico(
                              color: Colors.black, fontSize: 30.0),
                        ),
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.home,
                      color: kMobileRedColor,
                    ),
                    title: Text(
                      'HOME',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.person,
                      color: kMobileRedColor,
                    ),
                    title: Text(
                      'ABOUT',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.grading_outlined,
                      color: kMobileRedColor,
                    ),
                    title: Text(
                      'SKILLS',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.build,
                      color: kMobileRedColor,
                    ),
                    title: Text(
                      'PROJECT',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.contact_page_outlined,
                      color: kMobileRedColor,
                    ),
                    title: Text(
                      'CONTACT',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.book_outlined,
                      color: kMobileRedColor,
                    ),
                    title: Text(
                      'RESUME',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            body: Stack(
              children: [
                Positioned(
                  bottom: 0.0,
                  right: -width * 0.25,
                  child: Opacity(
                    opacity: 0.9,
                    child: Image.asset(
                      'images/rembg.png',
                      height: height * 0.50,
                    ),
                  ),
                ),
                Container(
                    margin:
                        EdgeInsets.fromLTRB(width * 0.07, height * 0.10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'HEY THERE!',
                              style: TextStyle(
                                  color: kBoldCaptionColor, fontSize: 25.0),
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
                          height: height * 0.03,
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
      },
    );
  }
}
/*
AdaptiveText(
"Sneha Kapoor",
style: TextStyle(
fontSize: width < 1200 ? height * 0.080 : height * 0.090,
fontWeight: FontWeight.w100,
color: kButtonColor),
),*/

/*
DefaultTextStyle(
style: TextStyle(
fontSize: width < 1200 ? height * 0.085 : height * 0.095,
color: kButtonColor),
child: AnimatedTextKit(
animatedTexts: [
WavyAnimatedText('Sneha Kapoor'),
],
isRepeatingAnimation: true,
),
)*/
/*
AdaptiveText(
'WELCOME TO MY PORTFOLIO! ',
style: TextStyle(
fontSize: height * 0.03,
fontWeight: FontWeight.bold,
color: kBoldCaptionColor,
decoration: TextDecoration.none,
),
),*/
