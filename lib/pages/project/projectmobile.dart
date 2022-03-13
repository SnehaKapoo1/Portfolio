import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widget/carddesign.dart';
import 'package:portfolio/widget/custombutton.dart';

class ProjectMobile extends StatelessWidget {
  const ProjectMobile({Key? key}) : super(key: key);

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
    return Column(
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
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int itemIndex, int i) =>
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: ProjectCard(
                  cardWidth:  width < 650 ? width * 0.8 : width * 0.4,
                  projectIcon: kProjectIcon[itemIndex],
                  projectTitle: kProjectTitles[itemIndex],
                  projectDescription: kProjectDescription[itemIndex],
                  projectLink: kProjectsLinks[itemIndex],

                ),
              ),
          options: CarouselOptions(
              height: height * 0.4,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enableInfiniteScroll: true
          ),
        ),
        SizedBox(
          height: height * 0.05,
        ),
        const CustomButton()
      ],
    );
  }
}
