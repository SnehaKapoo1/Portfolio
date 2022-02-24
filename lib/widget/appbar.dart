import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

class AppBarTab extends StatelessWidget {
  AppBarTab({Key? key}) : super(key: key);

  final List<String> _sectionsName = [
    "HOME",
    "ABOUT",
    "SKILLS",
    "PROJECTS",
    "CONTACT",
    "RESUME"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < _sectionsName.length; i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: AutoSizeText(
                  _sectionsName[i],
                  style: const TextStyle(
                    fontSize: 18.0,

                  ),
                ),
              ),
          ],
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          overlayColor: MaterialStateProperty.all(kButtonColor),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.white;
            }
            return Colors.black;
          }),
        ),
      ),
    );
  }
}
