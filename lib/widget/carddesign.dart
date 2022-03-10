import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final String? projectIcon;
  final IconData? projectIconData;
  final String? projectDescription;
  final String? projectTitle;
  final String? projectLink;
  final double? cardWidth;
  final double? cardHeight;
  final String? backImage;
  final Widget? bottomWidget;

  const ProjectCard(
      {Key? key,
      this.projectIcon,
      this.projectIconData,
      this.projectDescription,
      this.projectTitle,
      this.projectLink,
      this.cardWidth,
      this.cardHeight,
      this.bottomWidget,
      this.backImage})
      : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: InkWell(
        onTap: () => launch(widget.projectLink!),
        onHover: (isHovering) {
          if (isHovering) {
            setState(() {
              isHover = true;
            });
          } else {
            setState(() {
              isHover = false;
            });
          }
        },
        child: Container(
          width: widget.cardWidth,
          height: widget.cardHeight,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              border: Border.all(
                   width: 2,
                color: Colors.white54
              ),
              boxShadow: isHover
                  ? [
                      const BoxShadow(
                          color: kButtonColor,
                          blurRadius: 12.0,
                          offset: Offset(0.0, 0.0))
                    ]
                  : [
                      BoxShadow(
                          color: Colors.white.withAlpha(100),
                          blurRadius: 12.0,
                          offset: const Offset(0.0, 0.0))
                    ]),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.projectIcon != null
                      ? (width > 1135 || width < 950)
                          ? Image.asset(
                              widget.projectIcon!,
                              height: height * 0.05,
                            )
                          : Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  widget.projectIcon!,
                                  height: height * 0.03,
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Text(
                                  widget.projectTitle!,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      letterSpacing: 1.5,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                )
                              ],
                            )
                      : Container(),
                  widget.projectIconData != null
                      ? Icon(widget.projectIconData,
                          color: kButtonColor, size: height * 0.07)
                      : Container(),
                  (width > 1135 || width < 950)
                      ? SizedBox(
                          height: height * 0.02,
                        )
                      : const SizedBox(),
                  (width > 1135 || width < 950)
                      ? AutoSizeText(
                          widget.projectTitle!,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              fontSize: height * 0.02,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )
                      : Container(),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  AutoSizeText(
                    widget.projectDescription!,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: height * 0.005,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w700,
                      color: kBoldCaptionColor,
                      height: width >= 600 ? 2.0 : 1.2,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  widget.bottomWidget ?? Container(),
                ],
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 400),
                opacity: isHover ? 0.0 : 1.0,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: widget.backImage != null
                      ? Image.asset(widget.backImage!)
                      : Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
