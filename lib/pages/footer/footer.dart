import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/constants.dart';
class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      color: kGreyBackground,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AutoSizeText(
              "Developed in 💙 with ",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                color: kBoldCaptionColor,
              ),
            ),
            InkWell(
              onTap: () => launchURL("https://github.com/SnehaKapoo1"),
              child: const Text(
                "Flutter",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
