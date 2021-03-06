import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widget/adaptivetext.dart';
import 'package:portfolio/widget/tooltechwidget.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
      ),
      color: Colors.white,
      child: Column(
        children: [
          AutoSizeText(
            '\nAbout me!',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                fontSize: 50.0,
                color: kBoldCaptionColor,
                letterSpacing: 1.0,
                decoration: TextDecoration.none),
          ),
          AutoSizeText(
            'Get to know me :)',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w200,
              fontSize: 10.0,
              color: Colors.black87,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(height: 30.0),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'images/rembg.png',
                  height: height * 0.6,
                ),
              ),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AdaptiveText(
                        "Who am I?",
                        style: GoogleFonts.montserrat(
                          color: kButtonColor,
                          fontSize: height * 0.025,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      AdaptiveText(
                        "I'm Sneha Kapoor, a Flutter developer , Java Developer and an Open source Contributor.",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.035,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey[800],
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "I am a Pre-Final year student of Bachelor???s Technology in Computer Science and Engineering at Lovely Professional University of punjab. I enjoy creating things that live on the internet, whether that be websites, applications, or anything in between. I have worked also worked with various frameworks like Spring Boot, Servlet Engine, JSP etc.",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.02,
                          color: Colors.black,
                          height: 2.0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(color: Colors.black12, width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "Technologies I have worked with:",
                        style: GoogleFonts.montserrat(
                          color: kButtonColor,
                          fontSize: height * 0.018,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < kTools.length; i++)
                            ToolTechWidget(
                              techName: kTools[i],
                            ),
                        ],
                      ),
                      /*SizedBox(
                        height: height * 0.02,
                      ),*/
                      /* Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom:
                            BorderSide(color: Colors.white10, width: 2.0),
                          ),
                        ),
                      ),*/
                      /*SizedBox(
                        height: height * 0.025,
                      ),*/
                      /*  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AboutMeMetaData(
                            data: "Name",
                            information: "Muhammad Hamza",
                          ),
                          AboutMeMetaData(
                            data: "Email",
                            information: "hamza.6.shakeel@gmail.com",
                          ),
                        ],
                      ),*/
                      /*SizedBox(
                        height: height * 0.02,
                      ),*/
                      /* Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedCustomBtn(
                              onPressed: () {
                                html.window.open(
                                    'https://drive.google.com/file/d/1GF-wtbu2ob_Uxhw2In2QA8QiYi3XjCj1/view?usp=sharing',
                                    "pdf");
                              },
                              btnText: "Resume",
                            ),
                          ),
                          Container(
                            width: width * 0.05,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey[900], width: 2.0),
                              ),
                            ),
                          ),
                          for (int i = 0; i < kCommunityLogo.length; i++)
                            CommunityIconBtn(
                              icon: kCommunityLogo[i],
                              link: kCommunityLinks[i],
                              height: _communityLogoHeight[i],
                            ),
                        ],
                      ),*/
                    ],
                  ),
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
