import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/constants.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return OrientationBuilder(builder: (_, Orientation ori) {
      if (ori == Orientation.landscape) {
        return Container(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.02, vertical: height * 0.02),
          child: Column(
            children: [
              AutoSizeText(
                '\nContact',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 50.0,
                    color: kBoldCaptionColor,
                    letterSpacing: 1.0,
                    decoration: TextDecoration.none),
              ),
              AutoSizeText(
                "Let's get in touch and build something together :)\n\n",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                  fontSize: 20.0,
                  color: Colors.black87,
                  decoration: TextDecoration.none,
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 12.0),
                      child: Container(
                        height: width < 1200 ? height * 0.28 : height * 0.25,
                        width: width < 1200 ? width * 0.25 : width * 0.2,
                        child: Center(
                          child: Column(
                            children: [
                              Icon(
                                Icons.home,
                                color: kButtonColor,
                                size: height * 0.070,
                              ),
                              AutoSizeText(
                                'Location',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20.0,
                                    color: kBoldCaptionColor,
                                    letterSpacing: 1.0,
                                    decoration: TextDecoration.none),
                              ),
                              AutoSizeText(
                                '\nMuzaffarpur, Bihar',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 10.0,
                                    color: kBoldCaptionColor,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        ),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: kButtonColor,
                                spreadRadius: 3,
                                blurRadius: 5,
                              )
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 12.0),
                      child: Container(
                        height: width < 1200 ? height * 0.28 : height * 0.25,
                        width: width < 1200 ? width * 0.25 : width * 0.2,
                        child: Center(
                          child: Column(
                            children: [
                              Icon(
                                Icons.call,
                                color: kButtonColor,
                                size: height * 0.070,
                              ),
                              AutoSizeText(
                                'Phone',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20.0,
                                    color: kBoldCaptionColor,
                                    decoration: TextDecoration.none),
                              ),
                              AutoSizeText(
                                '\n(+91) 8427407978',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 10.0,
                                    color: kBoldCaptionColor,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        ),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: kButtonColor,
                                  spreadRadius: 3,
                                  blurRadius: 5)
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 12.0),
                      child: Container(
                        height: width < 1200 ? height * 0.28 : height * 0.25,
                        width: width < 1200 ? width * 0.25 : width * 0.2,
                        child: Center(
                          child: Column(
                            children: [
                              Icon(
                                Icons.email,
                                color: kButtonColor,
                                size: height * 0.070,
                              ),
                              AutoSizeText(
                                'Email',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20.0,
                                    color: kBoldCaptionColor,
                                    letterSpacing: 1.0,
                                    decoration: TextDecoration.none),
                              ),
                              AutoSizeText(
                                '\nsnehakapoor1193@gmail.com',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 10.0,
                                    color: kBoldCaptionColor,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        ),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: kButtonColor,
                                  spreadRadius: 3,
                                  blurRadius: 5)
                            ]),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      } else {
        return Container(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.02, vertical: height * 0.02),
          child: Column(
            children: [
              AutoSizeText(
                '\nContact',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 50.0,
                    color: kBoldCaptionColor,
                    letterSpacing: 1.0,
                    decoration: TextDecoration.none),
              ),
              AutoSizeText(
                "Let's get in touch and build something together :)\n\n",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                  fontSize: 20.0,
                  color: Colors.black87,
                  decoration: TextDecoration.none,
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Container(
                        child: Column(
                          children: [
                            Icon(
                              Icons.home,
                              color: kButtonColor,
                              size: height * 0.070,
                            ),
                            AutoSizeText(
                              'Location',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20.0,
                                  color: kBoldCaptionColor,
                                  letterSpacing: 1.0,
                                  decoration: TextDecoration.none),
                            ),
                            AutoSizeText(
                              '\nMuzaffarpur, Bihar',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w200,
                                  fontSize: 10.0,
                                  color: kBoldCaptionColor,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: kButtonColor,
                                  spreadRadius: 3,
                                  blurRadius: 5)
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Container(
                        child: Column(
                          children: [
                            Icon(
                              Icons.call,
                              color: kButtonColor,
                              size: height * 0.070,
                            ),
                            AutoSizeText(
                              'Phone',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20.0,
                                  color: kBoldCaptionColor,
                                  decoration: TextDecoration.none),
                            ),
                            AutoSizeText(
                              '\n(+91) 8427407978',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w200,
                                  fontSize: 10.0,
                                  color: kBoldCaptionColor,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: kButtonColor,
                                  spreadRadius: 3,
                                  blurRadius: 5)
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Container(
                        child: Column(
                          children: [
                            Icon(
                              Icons.email,
                              color: kButtonColor,
                              size: height * 0.070,
                            ),
                            AutoSizeText(
                              'Email',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20.0,
                                  color: kBoldCaptionColor,
                                  letterSpacing: 1.0,
                                  decoration: TextDecoration.none),
                            ),
                            AutoSizeText(
                              '\nsnehakapoor1193@gmail.com',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w200,
                                  fontSize: 10.0,
                                  color: kBoldCaptionColor,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: kButtonColor,
                                  spreadRadius: 3,
                                  blurRadius: 5)
                            ]),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      }
    });
  }
}
