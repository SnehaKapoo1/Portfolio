import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/animations/widgetanimator.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widget/carddesign.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          AutoSizeText(
            '\nGet in touch ',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                fontSize: 50.0,
                color: kBoldCaptionColor,
                letterSpacing: 1.0,
                decoration: TextDecoration.none),
          ),
          AutoSizeText(
            "Let's build something together :)\n\n",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w200,
              fontSize: 10.0,
              color: Colors.black87,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              kContactIcons.length,
                  (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: WidgetAnimator(
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
                    cardHeight: width < 1200 ? height * 0.28 : height * 0.25,
                    projectIconData: kContactIcons[index],
                    projectTitle: kContactTitles[index],
                    projectDescription: kContactDetails[index],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),

        ],
      ),
    );
  }
}
