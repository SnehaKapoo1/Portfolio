// import 'package:flutter/cupertino.dart';
// import 'package:portfolio/utils/constants.dart';
// import 'package:flutter/material.dart';
//
// class SocialMedia extends StatelessWidget {
//   final String icon;
//   final String socialLink;
//   final double height;
//   final double horizontalPadding;
//
//   const SocialMedia(
//       {Key? key,
//       required this.icon,
//       required this.socialLink,
//       required this.height,
//       required this.horizontalPadding})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: EdgeInsets.symmetric(
//           horizontal: horizontalPadding,
//         ),
//         child: SocialMedia(
//             icon: icon,
//             socialLink: socialLink,
//             height: height,
//             horizontalPadding: horizontalPadding));
//   }
// }

class SocialMedia {
  late String icon;
  late String socialLink;

  SocialMedia({required this.icon, required this.socialLink});
}

List<SocialMedia> socialMediaList = [
  SocialMedia(
      icon: "https://img.icons8.com/ios-glyphs/480/D50000/instagram-new.png",
      socialLink: "https://www.instagram.com/iamsnehakapoor8/"),
  SocialMedia(
      icon: "https://img.icons8.com/metro/308/D50000/linkedin.png",
      socialLink: "www.linkedin.com/in/sneha-kapoor/"),
  SocialMedia(
      icon: "https://img.icons8.com/material-rounded/384/D50000/github.png",
      socialLink: "https://github.com/SnehaKapoo1/"),
  SocialMedia(
      icon: "https://img.icons8.com/material-rounded/384/D50000/envelope.png",
      socialLink: "mailto:snehakapoorofficial@gmail.com"),
];
