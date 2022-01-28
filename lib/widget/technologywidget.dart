import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/constants.dart';

class TechWidget extends StatelessWidget {
  final String? techName;
  final String? techImage;

  const TechWidget({Key? key, this.techName, this.techImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
        child: Row(
          children: [
            Icon(
              Icons.play_arrow_rounded,
              color: kButtonColor,
              size: MediaQuery.of(context).size.height * 0.02,
            ),
            /*Image.asset(
              '$techImage',
              width: 20,
              height: 30,
              fit: BoxFit.cover,
            ),*/
            AutoSizeText(
              '$techName',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: MediaQuery.of(context).size.height * 0.02,
                color: kCaptionColor,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ));
  }
}
