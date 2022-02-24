/*
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widget/carddesign.dart';

class ContactDetail extends StatelessWidget {
  const ContactDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        CarouselSlider.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int index, int i) =>
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ProjectCard(
                  cardWidth: width > 480 ? width * 0.5 : width * 0.8,
                  projectIconData: kContactIconData[i],
                  projectDescription: ,
                ),
              ),
      options: CarouselOptions(
          height: height * 0.3,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          enlargeCenterPage: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          enableInfiniteScroll: false),
    ),
      ],
    );
  }
}
*/
