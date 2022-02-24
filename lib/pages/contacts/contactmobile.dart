import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widget/carddesign.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
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
            fontSize: 18.0,
            color: Colors.black87,
            decoration: TextDecoration.none,
          ),
        ),
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index, int i) =>
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ProjectCard(
                  cardWidth: width > 480 ? width * 0.5 : width * 0.8,
                  projectIconData: kContactIcons[i],
                  projectTitle: kContactTitles[i],
                  projectDescription: kContactDetails[i],
                ),
              ),
          options: CarouselOptions(
              height: height * 0.3,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration:
              const Duration(milliseconds: 800),
              enableInfiniteScroll: false),
        ),
      ],
    );
  }
}
