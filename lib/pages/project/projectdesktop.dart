import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/animations/widgetanimator.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widget/carddesign.dart';
import 'package:portfolio/widget/custombutton.dart';

class ProjectDesktop extends StatefulWidget {
  const ProjectDesktop({Key? key}) : super(key: key);

  @override
  _ProjectDesktopState createState() => _ProjectDesktopState();
}

class _ProjectDesktopState extends State<ProjectDesktop> {

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          AutoSizeText(
            '\nProjects ',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                fontSize: 50.0,
                color: kBoldCaptionColor,
                letterSpacing: 1.0,
                decoration: TextDecoration.none),
          ),
          AutoSizeText(
            "Here's are the sample of my projects:)\n\n",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w200,
              fontSize: 12.0,
              color: Colors.black87,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(
            height: width > 1200 ? height * 0.45 : width * 0.21,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              itemBuilder: (context, index) {
                return WidgetAnimator(
                    child: ProjectCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.35,
                      cardHeight: width < 1200 ? height * 0.32 : height *
                          0.1,
                      backImage: kProjectBanner[index],
                      projectIcon: kProjectIcon[index],
                      projectTitle: kProjectTitles[index],
                      projectDescription: kProjectDescription[index],
                      projectLink: kProjectsLinks[index],
                    )
                );
              },
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return VerticalDivider(
                  color: Colors.transparent,
                  width: width * 0.015,
                );
              },
              itemCount: 3,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
         const CustomButton()
        ],
      ),
    );
  }
}

