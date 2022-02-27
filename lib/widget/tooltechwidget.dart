import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:provider/provider.dart';

import 'adaptivetext.dart';

class ToolTechWidget extends StatelessWidget {
  final String techName;

  const ToolTechWidget({Key? key, required this.techName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: kButtonColor,
            size: MediaQuery.of(context).size.height * 0.02,
          ),
          AdaptiveText(
            " $techName ",
            style: const TextStyle(
              color: kBoldCaptionColor,
              fontSize: 12.0,
              decoration: TextDecoration.none,
            ),
          )
        ],
      ),
    );
  }
}
