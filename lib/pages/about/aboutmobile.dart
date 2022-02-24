import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widget/technologywidget.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            '\nAbout me!',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w200,
                fontSize: 30.0,
                color: kBoldCaptionColor,
                letterSpacing: 1.0,
                decoration: TextDecoration.none),
          ),
          AutoSizeText(
            "Get to know me :)",
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w200,
                fontSize: 15.0,
                color: kBoldCaptionColor,
                letterSpacing: 1.0,
                decoration: TextDecoration.none),
          ),

          Image.asset(
            'images/mob2.png',
            height: height * 0.4,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          AutoSizeText(
            'Who am I?',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
              fontSize: height * 0.025,
              color: kButtonColor,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(
            height: height * 0.028,
          ),
          AutoSizeText(
            'Hi There! I’m Sneha Kapoor, a flutter developer.',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
              fontSize: height * 0.022,
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
              fontSize: height * 0.018,
              color: kCaptionColor,
              decoration: TextDecoration.none,
            ),
          ),
          AutoSizeText(
            'Shortly currently, I am pursuing my Bachelor’s Technology in Computer Science and Engineering at Lovely Professional University of punjab.',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
              fontSize: height * 0.018,
              color: kCaptionColor,
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
    );
  }
}
