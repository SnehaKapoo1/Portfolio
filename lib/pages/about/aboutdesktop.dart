import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widget/technologywidget.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
      child: Column(
        children: [
          AutoSizeText(
            '\nAbout me!',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w200,
                fontSize: 50.0,
                color: kBoldCaptionColor,
                letterSpacing: 1.0,
                decoration: TextDecoration.none),
          ),
          AutoSizeText(
            'Get to know me :)',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w100,
              fontSize: 30.0,
              color: Colors.black87,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'images/rembg.png',
                  height: height * 0.6,
                ),
              ),
              Expanded(
                flex: width < 1230 ? 3 : 2,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        'Who am I?',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.035,
                          color: Colors.black87,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      AutoSizeText(
                        'Hi There! I’m Sneha Kapoor, a flutter developer.',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.030,
                          color: Colors.black87,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      AutoSizeText(
                        'I enjoy creating things that live on the internet, whether that be websites, applications, or anything in between.',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.02,
                          color: kCaptionColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      AutoSizeText(
                        'Shortly currently, I am pursuing my Bachelor’s Technology in Computer Science and Engineering at Lovely Professional University of punjab.',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.02,
                          height: 2.0,
                          color: kCaptionColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      AutoSizeText(
                        'Technologies I have been working recently: ',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.030,
                          color: kBoldCaptionColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < 3; i++)
                            TechWidget(
                              techName: kTechName[i],
                            ),
                        ],
                      ),
                      Row(
                        children: [
                          for (int i = 3; i < 6; i++)
                            TechWidget(
                              techName: kTechName[i],
                            ),
                        ],
                      ),
                      Row(
                        children: [
                          for (int i = 6; i < kTechName.length; i++)
                            TechWidget(
                              techName: kTechName[i],
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
