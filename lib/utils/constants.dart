import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const Color kButtonColor = Color(0xffC0392B);
const Color kCaptionColor = Color(0xff372424);
const Color kBoldCaptionColor = Color(0xff000000);
const Color kMobileRedColor = Color(0xffF44336);
const Color kGreyBackground = Color(0xff607D8B);

const kTechName = [
  'Flutter',
  'Dart',
  'Firebase',
  'Python',
  'Java',
  'Dbms',
  'MySQL',
  'SQL',
  'Os'
];
const kTechLogo = [
  'images/fluttersmall.png',
  'images/fluttersmall.png',
  'images/fluttersmall.png',
  'images/fluttersmall.png',
  'images/fluttersmall.png',
  'images/fluttersmall.png',
  'images/fluttersmall.png',
  'images/fluttersmall.png',
  'images/fluttersmall.png',
];

final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.email_outlined,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "Muzaffarpur, Bihar",
  "(+91) 8427407978",
  "sk7784933@gmail.com"
];

final kProjectBanner = [
  "assets/project/weather.png",
  "assets/project/bmi.png",
  "assets/project/RunningN.png"
];

final kProjectIcon = [
  "assets/project/medkit.png",
  "assets/project/medkit.png",
  "assets/project/medkit.png"
];

final kProjectTitles =[
  "Weather App",
  "Bmi Calculator",
  "Calories Burn"
];

final kProjectDescription=[
  "A Flutter application to fetch and show the weather of any particular city or as per you current location.",
  "The Body Mass Index (BMI) Calculator application measures the weight status of your body in relation to the fat.",
  "An android app which will let you know how much you run or walk and from that walk how much you burn your calories."
];

final kProjectsLinks =[
  "https://github.com/SnehaKapoo1/Clima-Flutter",
"https://github.com/SnehaKapoo1/BMI-Calculator-Flutter",
  "https://github.com/SnehaKapoo1/BMI-Calculator-Flutter"
];

final kTools = [
  "Flutter",
  "Dart",
  "Python",
  "Java",
  "DBMS",
  "Mongo DB",
  "HTML",
  "CSS",
];

void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';