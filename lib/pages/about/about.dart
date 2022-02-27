import 'package:flutter/cupertino.dart';
import 'package:portfolio/pages/about/aboutdesktop.dart';
import 'package:portfolio/pages/about/aboutmobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: const AboutMobile(),
      desktop:  AboutDesktop(),
    );
  }
}

